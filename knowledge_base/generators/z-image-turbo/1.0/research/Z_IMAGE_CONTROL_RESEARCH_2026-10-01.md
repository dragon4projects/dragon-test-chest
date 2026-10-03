# Z-Image Turbo Control / ControlNet — research notes for character production

**Date:** 2026-10-01  
**Owner / use:** Khitrushka — Character Lead / Character Production  
**Status:** WORKING RESEARCH NOTE / TEST PLAN — not a locked production recipe  
**Primary project use:** Helga body masters, Valenta/Helga directional masters, later sprite-state production for Dragon House  

---

## 0. Executive conclusion

For our character pipeline, **text prompting alone is not reliable enough for exact pose / turntable geometry**. Z-Image Turbo can follow simple camera and pose language, but community tests repeatedly show that complex or persistent body pose is unstable. When exact structure matters, separate **structure control** from **appearance/style/identity**.

Practical hierarchy for our work:

1. **Identity / appearance:** character master + LoRA / identity reference where available.
2. **Pose / joint layout:** OpenPose / DWPose-style ControlNet.
3. **Spatial volume / camera / depth:** Depth ControlNet.
4. **Exact silhouette / contour after we already like the body:** Canny ControlNet.
5. **Fine face cleanup:** local face-detail/refiner pass at low denoise, only after identity geometry is already correct.

For Helga specifically, our current failure — prompt says exact straight front standing pose, generation instead produces a floor-supported reverse-tabletop/yoga pose — is exactly the class of failure for which pose control is preferable to adding more prose.

**Important local limitation:** current public evidence does **not** yet prove that Draw Things can natively load Alibaba's Z-Image Fun-ControlNet-Union. A public Draw Things feature request for Z-Image ControlNet support remains open and reports the Union model as incompatible when imported. Therefore we should **test availability in our actual Draw Things build before designing the pipeline around it**. If unavailable, use a temporary fallback: simple pose-first txt2img or a clean pose/reference image + low/moderate-strength img2img, while keeping proper ControlNet as the desired production solution.

---

# 1. Source-confidence labels used below

- **[OFFICIAL]** — upstream model/config/repository documentation.
- **[PROVIDER]** — inference/provider guide with concrete implementation details.
- **[WORKFLOW AUTHOR]** — published workflow/model card by its creator.
- **[COMMUNITY]** — Reddit / forum observations; useful experimentally, not universal truth.
- **[EDITORIAL]** — tutorial/blog synthesis; good for patterns but backend-specific numbers must be verified.

When sources disagree, our project baseline follows official Z-Image defaults first, then what we physically verify in Draw Things on Dragon's Mac.

---

# 2. Official Z-Image Turbo baseline

Upstream/current official references support these defaults:

- inference steps: **8**;
- guidance scale: **0.0** in the official Diffusers-style pipeline;
- default text sequence limit: **512 tokens**;
- 1024×1024 is a common/default reference size;
- local pipelines may expose a larger max sequence length, including 1024, but this is implementation-specific.

### Project consequence

Do not treat random web presets like CFG 3, CFG 5, or 50 steps as universal Z-Image truth. Some frontends reinterpret guidance, use CFG-Zero variants, or modify scheduler behavior.

For **Draw Things**, keep our already-tested local baseline unless a controlled A/B test proves otherwise:

```text
Z-Image Turbo
960×1280 for full body
8 steps
UniPC Trailing
Shift 3.0
negative prompt empty
Text Guidance 0 or the exact backend-equivalent setting already validated locally
```

If comparing prompt/control changes, change **one variable at a time**.

---

# 3. What ControlNet changes conceptually

The strongest recurring pattern across the ControlNet sources is:

> **Prompt / model = appearance, materials, lighting, identity and scene semantics.**  
> **ControlNet = structure.**

This is much better than trying to encode every joint angle, camera relation and silhouette in prose.

When the structure is wrong, the preferred fix is usually to improve the structural reference/control input rather than adding another paragraph to the prompt.

---

# 4. Control modes and where we should use them

## 4.1 Pose / OpenPose / DWPose

Best for:
- exact standing posture;
- limb placement;
- repeated turntable stance;
- walking / sitting / use-object state skeletons;
- directional sprite production;
- keeping the same action beat while changing appearance.

Does **not** by itself guarantee:
- face identity;
- correct hands/fingers;
- exact body volume;
- exact clothing silhouette.

### Our use

For Helga body discovery, Pose is the first control I would try once available. It gives us the straight-front standing skeleton without locking the current boring body silhouette.

For later Dragon House sprites, Pose is likely the primary control for:

```text
idle
walk
sit
use-object
```

across the eight directional masters.

---

## 4.2 Depth

Best for:
- camera / perspective relationship;
- foreground vs background ordering;
- torso and body depth;
- room geometry;
- furniture interaction;
- maintaining a source composition while allowing texture/style changes.

Warning: Depth can faithfully preserve a **bad** perspective or unwanted body volume. Fix the source/reference first.

### Our use

Useful after a Helga body master exists and we want another render with the same broad body relief / camera relationship. Also likely useful for resident + furniture interaction studies in the 3D-house pipeline.

---

## 4.3 Canny

Best for:
- exact contour;
- body silhouette;
- clothing outline;
- object shape;
- architecture and hard-edged props.

Trade-off:
- high strength can make the result stiff;
- may over-lock unwanted anatomy;
- can flatten style freedom.

### Our use

**Do not use Canny to discover Helga's new body silhouette.** That would preserve the wrong/ordinary shape we are trying to escape.

Use Canny later, after we have a body master we actually like, to keep:
- waist/hip contour;
- limb length silhouette;
- directional master outline;
- outfit silhouette;
- exact prop/furniture edge relationships.

---

## 4.4 HED / softer edge control

HED preserves softer structural transitions than Canny, but several workflow reports say it can carry too much texture/information into Z-Image and produce noisy or painterly results.

### Our use

Not first choice for character masters. Test only after Pose / Depth / Canny are understood.

---

# 5. Control strength — practical starting range

Provider/workflow guidance converges around a useful middle range.

A practical starting map:

```text
0.2–0.35  very loose control; source is only a suggestion
0.4–0.55  moderate freedom
0.6–0.75  balanced structural control — best first test range
0.8–0.9   strong lock; useful for exact silhouette but stiffness risk
1.0       often over-constrained / stiff
```

A Diffusers Z-Image ControlNet example uses a conditioning scale around **0.75**.

### Project default proposal for first real test

```text
Pose:  0.65–0.75
Depth: 0.55–0.70
Canny: 0.60–0.80
```

These are **test starts, not locks**.

---

# 6. Prompting when structural control is present

Once ControlNet supplies structure, the prompt should stop fighting it.

Useful order:

```text
1. subject / identity
2. action or state
3. body / appearance essentials
4. environment
5. lighting
6. camera / lens only if needed
```

For exact body-master work, camera and pose requirements should appear very early.

### Important observed pattern

Z-Image Turbo is sensitive to the earliest semantic anchor in the prompt. Conflicting remnants from an older prompt can dominate the result.

Therefore before each body-master run:

- clear stale prompt fragments;
- put `adult woman`, view, stance, and framing first;
- avoid mixing contradictory anatomy/pose descriptions;
- do not bury the critical structure after atmospheric prose.

---

# 7. Prompt length: reconcile the conflicting advice

The reviewed sources disagree superficially:

- some guides recommend rich natural-language prompts;
- some provider tests report better adherence with short prompts;
- some prompt tutorials suggest 80–250 words;
- official text input defaults still cap around 512 tokens.

The useful synthesis is **task-dependent density**:

### For pose / geometry debugging
Use a **short prompt**. Establish:
- subject;
- exact view;
- exact stance;
- framing;
- only the most important body proportions.

### For final styled scene
Add:
- materials;
- hair/outfit;
- lighting;
- environment;
- camera language.

### For our body-master pipeline
Do **not** start with a 400-word anatomy essay. First prove the pose and silhouette. Add design details in controlled blocks.

---

# 8. Why changing seed may not give real variety

Several community threads report that Z-Image Turbo can produce strikingly similar compositions across different seeds. The hypothesis/workflow evidence is that the earliest denoising step strongly determines composition.

Community variation tricks include:

- first sampler / first step at very low CFG (~0.1), then normal CFG for remaining steps;
- 1–2 low-guidance steps followed by the main sampler;
- adding conditioning noise;
- using another fast model for a diverse base and then repainting/refining with Z-Image Turbo;
- low-resolution base then latent upscale/refine.

### Trade-off

These methods can increase diversity but can also:
- reduce prompt adherence;
- wash out dark scenes;
- introduce circular/noisy artifacts;
- hurt identity consistency.

### Our use

For **body silhouette exploration**, diversity hacks may be useful if different seeds keep giving near-clones.

For **production masters**, avoid them unless controlled and documented. Once we select the right body, repeatability matters more than novelty.

---

# 9. Complex pose persistence — key community finding

A recurring Reddit finding is that verbose text descriptions of complex poses are not reliably persistent in Z-Image Turbo. Simple poses can work; complex joint arrangements often drift.

The practical recommendation from users is simply: **use ControlNet for pose**.

This directly matches our 2026-10-01 Helga test:

```text
requested:
exact straight front view
neutral standing pose
head / torso / hips facing camera
feet flat
legs straight
arms relaxed

observed generation:
floor-supported reverse-tabletop / crab / yoga-like pose
sportswear
long hair
```

Conclusion: **do not spend hours trying to prose-engineer an exact turntable pose if proper pose control is available.**

---

# 10. Camera-angle control

Community experience suggests camera-angle phrases can work when they are concrete and geometric:

```text
straight front view
true side profile
45-degree three-quarter view
camera at chest height
orthographic-like studio reference
minimal perspective distortion
```

But camera control often degrades as the rest of the prompt becomes longer and more decorative.

### Recommended workflow

1. Generate/verify the shot with a brief prompt.
2. Lock seed / structural input.
3. Add identity/body block.
4. Add light/style last.

For exact turntable views, structural reference/control remains more reliable than text alone.

---

# 11. Face detail / face refinement

The face-detail tutorials converge on a masked local refinement workflow:

- detect/crop face;
- work at a larger local face resolution (often ~1024 crop in ComfyUI examples);
- blur mask edges moderately (often 8–16 px in the cited tutorial);
- use a **short face-specific prompt**;
- keep ZIT around 8 steps;
- low denoise for already-correct faces.

Useful denoise ranges from the tutorials:

```text
0.10–0.30  subtle enhancement / identity safer
0.40–0.80  stronger correction, much more identity drift
```

Some workflows add small latent noise (~0.05–0.10 for clean portraits, more for texture/variation).

### Our character rule

A face detailer is **not an identity generator**.

For Valenta / Helga:
1. get geometry/identity right first;
2. then use local refinement at low denoise for skin/eye/hair detail;
3. if the face geometry is wrong, go back to identity training/reference rather than polishing the wrong face.

---

# 12. Generic / memorized faces are not character consistency

The “familiar faces” community examples show Z-Image Turbo can repeatedly produce recognizable or default-like faces from textual names/prompts. This is **not** evidence that it can maintain our original characters across views.

For our original residents:

- Valenta → LoRA / approved identity masters;
- Helga → approved face masters, later LoRA if needed;
- do not trust “same woman” text alone for eight directional production masters.

The character pipeline still needs identity-specific conditioning plus controlled view/pose production.

---

# 13. Draw Things status — important limitation

## Public evidence found

A public Draw Things GitHub feature request titled approximately **“ControlNet support for Z Image (Fun-ControlNet-Union)”** remains open. The report says importing Alibaba's Z-Image Turbo Fun-ControlNet-Union is treated as incompatible.

The requested Union model supports modes including:
- Canny;
- HED;
- Depth;
- Pose;
- MLSD;
- Scribble;
- Gray;
- Inpainting.

The issue discusses an 8-step variant and a `control_context_scale` roughly in the 0.65–1.00 area.

### What this means for us

**Do not assume our Draw Things 26.0914.0 already has working native Z-Image ControlNet.**

Before building anything around it, perform one local import/control test.

If it works in our build: great — use it.

If it does not: do not waste the evening debugging prompts as a substitute for ControlNet. Use the fallback workflow below and revisit proper ControlNet through another local stack when worthwhile.

---

# 14. Immediate Helga workflow — recommended now

## Phase A — find the new body design

Goal: 45–55% artistic idealization, not bland average anatomy.

### If Draw Things ControlNet is NOT available

Use **txt2img**, but make the prompt pose-first and short.

First prove only:

```text
adult woman
exact straight front standing view
full body head to toe
arms relaxed slightly away from torso
feet flat, legs straight
short dark pixie
neutral studio
```

Then add only the high-value silhouette block:

```text
long neck
open shoulders
narrow ribcage
moderate expressive natural bust
narrow waist
wider feminine pelvis
strong waist-to-hip transition
long thighs and legs
```

If the pose still drifts, stop adding prose.

Create or obtain a clean front-standing reference and switch to **img2img ~30–40%** as a temporary pseudo-control. This is not equivalent to ControlNet; it may inherit unwanted hair, clothing, body volume or lighting from the source.

### If proper Pose ControlNet IS available

Use a clean straight-front skeleton/reference and let the prompt design the body around it.

Start around:

```text
Pose control: 0.65–0.75
8 steps
local Draw Things Z-Image baseline
```

Search body design with several seeds.

**Do not add Canny yet.**

---

## Phase B — select front body master

Selection criteria:
- memorable black silhouette;
- long neck;
- proud/open shoulders;
- body coherent at 45–55% idealization;
- narrow waist;
- feminine pelvis;
- strong waist → iliac line → hip transition;
- long legs / long femur;
- bust expressive but proportionally coherent;
- no fitness caricature;
- no fashion-mannequin blandness.

Only after the silhouette is accepted do we call it a body-master candidate.

---

## Phase C — freeze the accepted silhouette

Once we love the front:

- use Canny or Depth to preserve the approved body geometry;
- generate controlled profile/back/3⁄4 views;
- keep reference scale and body proportions stable;
- validate future actor anchors against the same body master.

This is where Canny becomes valuable rather than restrictive.

---

# 15. Directional sprite production implications

For Dragon House character production:

```text
CHARACTER MASTER
→ 8 DIRECTIONAL MASTERS
→ idle / walk / sit / use-object
→ transparent background
→ sprite atlas
→ Godot Sprite3D actor
```

Recommended controls by stage:

### Directional masters
- Pose / DWPose: directional posture and joint skeleton.
- Depth: keep camera/body volume consistent where useful.
- Canny: lock accepted silhouette once identity/body proportions are stable.

### Sit
Pose control becomes especially important. `seat_anchor` must remain compatible with the body asset.

### Use-object
Pose control + object/furniture target reference may be needed. `hand_use_anchor` cannot be fixed by drawing the hand in arbitrary places across each state.

### Production acceptance
A visually beautiful frame that changes leg length, pelvis width, shoulder width or anchor positions enough to break the shared rig is **not production-compatible**.

---

# 16. Two-sampler / step-cutoff ControlNet quality workaround

The Civitai Z-Image Turbo ControlNet workflow history is especially interesting:

- early v0.1 reportedly used one sampler and had lower quality;
- v1.0 switched to **two KSamplers**;
- author says this substantially improved quality;
- the change was based on a community workaround involving a **step cutoff** for ZIT ControlNet.

This suggests an important technical distinction:

> the ControlNet structure pass and the final image-quality/refinement pass may benefit from being separated rather than forcing one sampler to do both jobs.

This is currently a **ComfyUI workflow finding**, not a Draw Things recipe. Do not transpose node settings blindly.

---

# 17. Source-specific parameter conflicts — do not mix blindly

## Guidance / CFG
Found values include:
- official Z-Image pipeline: **0.0**;
- many community/Forge workflows: **1.0**;
- one best-practice site: around **3**;
- variation workflows: temporary **0.1** for the first step(s).

These are not interchangeable because frontends/schedulers differ.

### Project rule
Use our known local Draw Things baseline. Only change guidance in an isolated A/B test.

## Steps
Found values include:
- official Turbo: **8**;
- provider/community common: 6–9;
- one fashion Reddit anecdote: ~50.

### Project rule
8 remains baseline. 50-step claims are anecdotal and backend-specific, not our default.

## Prompt length
Found advice ranges from concise 12–25 words to 80–250 words.

### Project rule
For structural debugging: concise.  
For final scene/detail: expand only after structure is locked.

---

# 18. Source-by-source distilled notes

## 1. WaveSpeed — Z-Image Turbo ControlNet Guide
URL: https://wavespeed.ai/blog/posts/blog-z-image-turbo-controlnet-guide/

Useful:
- strongest conceptual explanation of style vs structure separation;
- clear comparison of Depth / Canny / Pose;
- practical control-strength examples;
- “fix structural reference, not prompt” principle;
- Pose will not magically repair hands or identity.

Value to us: **HIGH**.

---

## 2. Reddit — ZImageTurbo variations workflow
URL: https://www.reddit.com/r/StableDiffusion/comments/1sbxkfd/zimageturbo_variations_workflow/

Useful:
- ZIT can be unusually seed-insensitive;
- two-stage sampler / early low-CFG randomness trick;
- 1 low-CFG step gives more variety; 2 can reduce artifacts but also reduce diversity;
- can hurt dark/color-specific scenes.

Value to us: **MEDIUM**, mainly silhouette exploration.

---

## 3. Reddit — complex persistent Z-Image Turbo pose
URL: https://www.reddit.com/r/StableDiffusion/comments/1pjqgcz/what_is_the_most_complex_persistent_zimage_turbo/

Useful:
- complex pose prose often fails to persist;
- community recommendation: ControlNet for exact pose;
- apparent persistence should not be confused with precise control.

Value to us: **HIGH** for Helga.

---

## 4. z-image.me — Pose / Depth / Canny workflow
URL: https://z-image.me/en/zit-workflow/z-image-turbo-controlnet-workflow-pose-depth-canny-v10

Crawler exposed little of the actual workflow page. It appears to mirror/describe the Pose/Depth/Canny v1.0 workflow family, but I do not have enough exact extracted content to rely on its node details.

Value to us: **POTENTIALLY HIGH**, but **PDF/saved page requested if we need exact screenshots/node graph**.

---

## 5. zimage.run — ControlNet pose control guide
URL: https://zimage.run/blog/z-image-controlnet-pose-control-guide-0421-en

Useful:
- Union modes include Canny, HED, OpenPose, Depth;
- Canny tends to give strongest contour fidelity;
- HED can over-carry detail and become noisy/painterly;
- OpenPose controls joint layout, not identity.

Value to us: **HIGH**.

---

## 6. Civitai — Z-Image Turbo ControlNet workflow Pose/Depth/Canny
URL: https://civitai.com/models/2190433/z-image-turbo-controlnet-workflow-pose-depth-canny

Direct page access was unreliable, but indexed/archive information was recoverable.

Recovered:
- v0.1 one-sampler quality was poor;
- v1.0 moved to two KSamplers;
- author reports major quality improvement;
- step-cutoff workaround is part of the improvement;
- workflow archive observed as `zImageTurboControlnet_v10.zip`;
- indexed SHA-256: `ca2d71d039902982ae6f02e8de3e2210ddfbcbedb8f93f961eca1bc008ae43e1`;
- workflow expected a recent ComfyUI/Nightly because of model-patch compatibility.

Value to us: **HIGH for architecture of a future ComfyUI control workflow**.  
**PDF requested if exact current page / diagrams / settings are needed.**

---

## 7. Reddit / ComfyUI — advanced face detail workflow
URL: https://www.reddit.com/r/comfyui/comments/1t0dzo1/advanced_face_detail_workflow_for_zimage_turbo/

Useful community patterns:
- base image → low-denoise ZIT refinement;
- ~0.2 denoise for gentle face cleanup;
- ~0.4 can materially redesign the face;
- use face-detailer as refinement, not identity source.

Value to us: **MEDIUM-HIGH** after identity lock.

---

## 8. Facebook Stable Diffusion Korea post
URL: https://www.facebook.com/groups/stablediffusionkorea/posts/2052239015618935/

Could not access useful post content through the crawler.

Value: **UNKNOWN — NEED PDF / saved page from Dragon**.

---

## 9. Reddit — gallery of familiar faces Z-Image Turbo can make
URL: https://www.reddit.com/r/StableDiffusion/comments/1rmd1i6/a_gallery_of_familiar_faces_that_zimage_turbo_can/

Useful caution:
- ZIT may reproduce recurring/default/memorized face patterns;
- this is not the same as robust custom-character identity consistency;
- do not mistake “recognizable face” for a production identity pipeline.

Value to us: **MEDIUM**.

---

## 10. NextDiffusion — Z-Image Turbo as face detailer
URL: https://www.nextdiffusion.ai/tutorials/how-to-use-z-image-turbo-as-a-face-detailer-in-comfyui

Useful:
- detect face with bbox + segmentation/mask;
- local enlarged face crop;
- mask blur around 8–16;
- short face-specific prompt;
- 8-step ZIT refinement;
- 0.1–0.3 denoise for subtle detail;
- 0.4–0.8 stronger correction / more identity drift;
- small latent noise can restore skin texture/variation.

Value to us: **HIGH later**, especially after LoRA identity is correct.

---

## 11. zimage.run — Z-Image face swap workflow
URL: https://zimage.run/blog/zi-154-z-image-face-swap-workflow-en-20260722

Reviewed as adjacent identity tooling. It is a separate replacement/compositing workflow, not a substitute for our master/LoRA consistency strategy.

Value to immediate Helga body control: **LOW**.

---

## 12. Reddit — camera angles / “having much luck with...”
URL: https://www.reddit.com/r/StableDiffusion/comments/1pj6rrn/zimage_turbo_anyone_having_much_luck_with/

Useful:
- detailed geometric camera language can work;
- pose/camera adherence often falls as prompt complexity rises;
- build shot geometry first, then add detail.

Value to us: **HIGH** for turntable prompts.

---

## 13. WaveSpeed — Z-Image Turbo general guide
URL: https://wavespeed.ai/blog/posts/blog-z-image-turbo-on-wavespeed/

Useful:
- one-variable-at-a-time iteration;
- lock seed after a promising composition appears;
- provider tests favor concise, concrete prompts;
- subject → action → setting → mood → camera;
- concrete lighting beats vague adjective stacks.

Value to us: **HIGH** for disciplined experimentation.

---

## 14. zimageturbo.org — best practice
URL: https://zimageturbo.org/z-image-best-practice

Useful:
- camera-first/geometric prompt vocabulary;
- short/direct composition wording;
- front / profile / 45° phrasing.

Caution:
- site-specific CFG recommendations conflict with official Turbo guidance and our local baseline.

Value: **MEDIUM**.

---

## 15. MyAIForce — improve variation
URL: https://myaiforce.com/z-image-turbo-improve-variation/

Useful:
- seed changes alone may not create diverse compositions;
- early sampling perturbation increases variation;
- alternate-model base → ZIT repaint/refine is a workable diversity strategy;
- diversity comes at a coherence/adherence cost.

Value: **MEDIUM-HIGH** if Helga silhouette exploration gets stuck.

---

## 16. note.com AI Techlog
URL: https://note.com/ai_techlog/n/n28d8ecce425e?hl=en

Useful:
- natural sentences over tag soup;
- four-layer prompt structure: subject/action → style/medium → lighting → technical/composition;
- specific light direction/type is better than vague “cinematic”;
- quality buzzwords can add noise without control;
- 6–8 steps common;
- negative prompts / legacy SD prompt habits do not transfer cleanly.

Value: **HIGH as prompt hygiene**, not a control substitute.

---

## 17. BudgetPixel — fast images without losing control
URL: https://budgetpixel.com/blog/z-image-turbo-fast-ai-images-without-losing-control

Useful mainly as workflow framing:
- fast iteration;
- build a realistic foundation;
- use references/consistent design decisions rather than chasing novelty.

Value: **LOW-MEDIUM** technically.

---

## 18. GitHub gist — Z-Image Turbo prompting notes
URL: https://gist.github.com/illuminatianon/c42f8e57f1e3ebf037dd58043da9de32

Useful:
- reflects official-style guidance 0.0;
- notes default ~512-token context and possible larger local setting;
- natural-language scaffold;
- fixed seed for prompt comparison, random seeds for exploration.

Value: **MEDIUM-HIGH**, but it is still a community gist.

---

## 19. z-image.vip — prompt engineering masterclass
Original user URL was malformed/duplicated. Correct page used:
https://z-image.vip/blog/z-image-prompt-engineering-masterclass

Useful:
- full-body template includes build/posture, exact pose, limb placement, lighting, camera/lens;
- action prompts benefit from explicit limb lead / torso direction;
- offers density tiers from minimal to detailed.

Value: **MEDIUM-HIGH for prompt construction**, still weaker than Pose ControlNet for exact geometry.

---

## 20. Qubrid — better prompts for Z-Image Turbo
URL: https://qubrid.com/blog/how-to-write-better-prompts-for-z-image-turbo

Page content did not load through the crawler.

Value: **UNKNOWN — NEED PDF / saved page from Dragon**.

---

## 21. SocialFuel — Z-Image Turbo photorealism article
URL: https://socialfuel.media/z-image-turbo-the-underdog-model-that-quietly-redefined-ai-photorealism/

Useful:
- natural imperfection, realistic light falloff and restrained styling help realism;
- avoid over-processed stock-beauty polish when identity realism matters.

Value: **MEDIUM for final look**, low for control mechanics.

---

## 22. Reddit — first three hours with Z-Image Turbo as fashion model
URL: https://www.reddit.com/r/StableDiffusion/comments/1pxhaje/first_three_hours_with_zimage_turbo_as_a_fashion/?tl=ru

Useful community notes:
- some users prefer alternate samplers / longer runs;
- two-stage sampling appears again;
- heavy baked grain/texture is hard to remove later.

Caution:
- reported high step counts are anecdotal and conflict with official Turbo design.

Value: **MEDIUM as experimentation evidence**.

---

## 23. Reddit — “Want REAL variety in Z-Image? Change this one thing”
URL: https://www.reddit.com/r/StableDiffusion/comments/1pocapg/want_real_variety_in_zimage_change_this_one/?tl=ru

Direct thread fetch failed, but indexed/community copies surfaced the same class of techniques:
- perturb the earliest sampling step;
- conditioning noise;
- low-guidance/no-prompt first step then main prompt;
- two-stage denoise;
- low-res base + refinement.

Value: **MEDIUM for exploration**.  
**PDF requested if Dragon wants the exact original thread/comments preserved.**

---

# 19. Additional upstream / implementation references found during research

These were not in Dragon's source list but are useful for resolving conflicts.

## Official Z-Image config / Hugging Face model references
Key upstream defaults observed:
- 8 inference steps;
- guidance 0.0;
- max sequence length 512 by default;
- local larger sequence length possible where exposed.

## Diffusers Z-Image ControlNet pipeline
A public Diffusers pipeline example uses Z-Image ControlNet with:
- 8 steps;
- guidance 0;
- control conditioning around 0.75.

## Alibaba Z-Image-Turbo-Fun-Controlnet-Union family
Relevant modes reported:
- Canny;
- HED;
- Depth;
- Pose;
- MLSD;
- Scribble;
- Gray;
- Inpainting.

## Draw Things public feature request
A Z-Image Fun-ControlNet-Union compatibility/support request is still open in public project discussion. Treat native support as **unverified locally** until we test our actual build.

---

# 20. Smallest next technical test for us

Do not install a giant new stack yet.

### Test DT-ZCTRL-01
In current Draw Things:
1. check whether Z-Image ControlNet / control adapter can be added to the active Z-Image Turbo project;
2. if import/model selection exists, try **one** simple front-standing pose reference;
3. 960×1280, 8 steps, same known sampler/shift;
4. control strength ~0.7;
5. minimal prompt;
6. one image only.

Pass condition:
- straight front stance is actually obeyed;
- body remains generatable/editable rather than source-traced garbage;
- no incompatible-model/import error.

If PASS → build Helga Pose-Control workflow.  
If FAIL → do not fight Draw Things; use the txt2img/img2img fallback for tonight and decide later whether a separate ControlNet-capable local stack is worth installing.

---

# 21. Previously blocked sources — status after Dragon supplied captures/text/workflow

Dragon supplied direct screenshots/text for several previously blocked sources plus the actual `Z_Image_Variety.json` ComfyUI workflow. These are now incorporated below.

### Received / no PDF currently needed

1. **Facebook Stable Diffusion Korea post** — received as screenshot.
   - Post author: VR Pui, 2025-12-27.
   - Subject: `Zimage Woman Portraits`.
   - Uses a Z-Image Turbo trained model/checkpoint named **Beyond Reality**.
   - Claimed reason: stronger interpretation of human skin texture, higher detail and definition.
   - Environment named: ComfyUI.
   - This is a **model/checkpoint quality note**, not a pose/control recipe. Treat it as a possible later skin/detail branch, not as evidence about identity preservation or structural control.

2. **Qubrid — How to Write Better Prompts for Z-Image Turbo** — Dragon supplied the article text.
   - Recommends natural-language instructions rather than tag soup.
   - Suggested order: subject + action → setting/environment → lighting/mood → style/quality.
   - Says detail beats vague adjectives and recommends camera/framing language.
   - Claims Z-Image Turbo does not use a separate negative-prompt field and that constraints should be in the main prompt.
   - Recommends longer, well-organized prompts.
   - **Project interpretation:** useful for rich scene prompting, but not a universal rule for geometry debugging. Our local Draw Things experience still favors short, early structural instructions when pose/view is the main problem.

3. **Z-Image Turbo ControlNet workflow source** — Dragon supplied the relevant workflow text and screenshot.
   - Recommended preprocessors explicitly listed:
     - `CannyEdgePreprocessor`
     - `DepthAnythingPreprocessor`
     - `OpenposePreprocessor`
   - Workflow author recommends very current ComfyUI / Nightly when `ModelPatchLoader` errors appear.
   - macOS note: Manager-only updates may leave files stale; manual repo/update-script refresh may be required.
   - Missing optional `Huslyo123RealismNode` can be deleted without breaking the workflow according to the supplied guide.
   - **Important:** these are ComfyUI operational instructions; they do not prove equivalent support in Draw Things.

4. **Reddit — Want REAL variety in Z-Image?** — Dragon supplied translated post text plus actual workflow JSON.
   - Author reports ordinary seed changes can produce surprisingly similar Z-Image outputs/faces.
   - Author's key experiment: reduce `denoise` below `1.0` even on the first txt2img stage to increase variety.
   - Narrative says `0.7` produced much more variation but also more noise.
   - Author then added a second img2img-like refinement stage.
   - The shared JSON gives the exact workflow values; see §23 below.

### Still useful as PDF only if we need exact page/node preservation

- z-image.me ControlNet page — exact current screenshots/node layout if we want to archive it.
- Civitai workflow page — exact current description/version screenshots if we want an archival copy.

For practical work tonight, the supplied captures and JSON are already enough to extract the important control/variation patterns.

---

# 22. Current project recommendation

For **Helga tonight**:

> First solve **pose control**, then solve **body beauty**.

Do not ask the prompt to simultaneously invent:
- a new idealized anatomy;
- exact turntable stance;
- exact camera;- exact hair;
- exact clothing/nudity state;
- exact mood;
- exact realism.

That is how we got yoga instead of a body master.

Preferred sequence:

```text
POSE / VIEW
→ BODY SILHOUETTE
→ IDENTITY
→ HAIR / SURFACE
→ LIGHT
→ DETAIL
```

Once a front body is accepted:

```text
approved front master
→ structural control
→ profile / back / 3⁄4
→ anchor validation
→ production state generation
```

This aligns directly with the Dragon House character contract: stable proportions and interaction anchors matter more than an individually pretty but incompatible frame.


---

# 23. Exact dissection of Dragon-supplied `Z_Image_Variety.json`

This is more valuable than a prose description because it exposes the actual graph values used by the shared ComfyUI workflow.

## 23.1 Model stack

```text
UNET: z_image_turbo_bf16.safetensors
CLIP: qwen_3_4b.safetensors
CLIP type: lumina2
VAE: diffusion_pytorch_model.safetensors
```

A LoRA loader exists but its strengths are both `0`, so the listed experimental pixel-art LoRA is effectively disabled in this saved graph:

```text
ZImage\\zimage_experimental_pixelart.safetensors
strength_model = 0
strength_clip  = 0
```

Therefore the variety behavior demonstrated by this workflow should not be attributed to that LoRA.

## 23.2 Seed behavior

The graph contains one `Seed (rgthree)` node in randomize mode, linked to **both** KSamplers.

Practical implication:
- each queued run receives a randomized seed;
- both stages are driven from the same external seed source in that run;
- diversity in the demo is therefore a mixture of seed randomization **plus** the non-1.0 denoise schedule, not denoise in isolation unless seed is experimentally fixed.

For our own A/B test we should fix the seed first, then vary only denoise/strength.

## 23.3 First stage — low-resolution diversity generation

```text
latent size: 144 × 192
batch: 1
ModelSamplingAuraFlow shift: 7
steps: 6
CFG: 1
sampler: er_sde
scheduler: normal
denoise: 0.5
```

This is notably more aggressive than the Reddit prose example mentioning `0.7`.

The saved workflow therefore implements a **0.5 first-stage denoise**, not 0.7.

The positive prompt in the shared graph is intentionally trivial:

```text
Face.
```

This supports the author's stated goal: demonstrate variation without relying on elaborate prompt wording.

## 23.4 Intermediate upscale

After first sampling:

```text
VAE Decode
→ ImageScale
method: nearest-exact
from: 144 × 192
to:   480 × 640
crop: center
→ VAE Encode
```

This is not a learned super-resolution stage. It is a cheap spatial enlargement followed by re-encoding so that stage two can rebuild detail.

## 23.5 Second stage — refinement

```text
ModelSamplingAuraFlow shift: 7
steps: 9
CFG: 1
sampler: euler
scheduler: simple
denoise: 0.75
```

So the exact saved recipe is:

```text
LOW-RES DIVERSITY PASS
144×192
6 steps
CFG 1
er_sde / normal
shift 7
denoise 0.50

→ nearest-exact upscale to 480×640
→ VAE re-encode

REFINEMENT PASS
9 steps
CFG 1
euler / simple
shift 7
denoise 0.75
```

This is materially different from our current Draw Things body-master baseline (`960×1280`, 8 steps, Guidance 0, UniPC Trailing, shift 3, text2img strength 100%). Do **not** transfer individual numeric settings blindly between these pipelines.

## 23.6 Negative prompt contradiction

The Qubrid text says Z-Image Turbo does not support a separate negative prompt and recommends placing all constraints in the main instruction.

However the supplied ComfyUI JSON explicitly contains a negative `CLIPTextEncode`:

```text
blurry, ugly, bad, text.
```

and routes that conditioning into both KSamplers.

This proves only that the ComfyUI graph **accepts and routes a negative-conditioning input**. It does **not** prove how much Z-Image Turbo actually responds to it, nor that Draw Things handles negatives identically.

Project rule:
> Treat negative-prompt behavior as backend/workflow-specific until tested. Prefer positive constraints in our Draw Things production prompts because that already works well locally.

## 23.7 What the variety workflow is good for in our project

Potentially useful for:
- generating **silhouette candidates** before a body master is locked;
- escaping repetitive face/body attractors;
- generating concept variants from extremely short prompts;
- exploring shape space cheaply at low resolution before refinement.

Not appropriate as the first solution for:
- exact front/profile/back turntable masters;
- identity-locked character production;
- anchor-compatible sprite directions;
- exact seated/use-object pose production.

Those tasks need **less uncontrolled variety**, not more.

### Helga consequence

For Helga we can use a diversity trick only in the **exploration phase**:

```text
explore silhouette diversity
→ choose one body candidate
→ lock source/seed
→ structural pose control
→ directional masters
```

Do not combine the variety workflow with final directional-master production until we know exactly how much geometry it destabilizes.

---

# 24. ControlNet source consolidation after Dragon's supplied material

The supplied ControlNet guide reinforces a simple division of labor:

## OpenPose
Use for:
- human stance;
- limb placement;
- front/profile/3⁄4 turntable pose;
- sit/use-object skeleton alignment.

Best candidate for our immediate **Helga straight-front problem**.

## DepthAnything / Depth
Use for:
- global body volume;
- camera-to-subject depth relationships;
- furniture interaction and spatial pose;
- preserving a chosen silhouette more than OpenPose alone.

Likely useful **after** we have an attractive Helga body candidate.

## Canny
Use for:
- hard silhouette/edge preservation;
- clothing outline;
- rigid object/furniture geometry;
- final shape retention where exact contour matters.

Risk for current Helga work:
- if the source body is aesthetically wrong, Canny will faithfully preserve the wrong silhouette.

Therefore:

```text
For HELGA FRONT exploration:
OpenPose first.

After a body candidate is accepted:
OpenPose + Depth.

Only when contour is already correct:
consider Canny.
```

The dog/reference screenshot supplied by Dragon visually demonstrates the intended philosophy: a source/reference structure can be extracted into a control representation and then restyled/reinterpreted while retaining broad geometry. The exact nodes in that screenshot are less important to us than the structural separation itself.

---

# 25. Beyond Reality note

Dragon's Facebook capture adds one candidate branch for later realism work:

```text
Z-Image Turbo derivative/checkpoint: Beyond Reality
claimed strength: human skin texture, higher detail/definition
runtime shown: ComfyUI
```

Do not use it as a substitute for character identity or body structure.

Possible later bounded test:
- same accepted Helga/Valenta source;
- same prompt/pose;
- base Z-Image Turbo vs Beyond Reality;
- compare skin texture, pores, microcontrast and identity drift.

Until such an A/B test exists, this remains a **render-detail candidate**, not a production default.

---

# 26. Revised immediate recommendation for Helga

The new source material makes the decision clearer.

### Do not solve the current failure by adding more prose.

The failure is mainly structural: the model ignored the demanded standing turntable pose and fell into an attractive training prior.

### Smallest useful path

1. Keep the prompt short and geometry-first.
2. Check whether current Draw Things can actually attach a Z-Image-compatible pose/control model.
3. If yes, use **OpenPose** for one exact standing-front proof.
4. If no, continue text2img only for body-silhouette exploration, not as evidence that a precise turntable pose is solved.
5. Once an attractive body exists, use img2img / structural control to derive the other views.

### Do not import the Reddit variety recipe into this test yet.

That workflow deliberately increases diversity. Our current failure is already **too much structural freedom**.

The variety recipe should be kept as a separate tool for escaping repetitive candidates, not mixed into the pose-control proof.