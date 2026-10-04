# Valenta body train LoRa

Working area for the Valenta body LoRA training preparation.

## Current purpose

Prepare and audit the body-training dataset, captions, trigger/activation strategy, training parameters, checkpoint naming, and later QA before starting a new local Draw Things CLI training run.

## Source-of-truth already recovered

- Accepted front body master: `VALENTA_BODY_MASTER_FRONT_V3_2026-10-02.png`
- Valenta body direction: petite, long-legged, light/fine-boned, narrow ribcage, compact torso, restrained natural bust/pelvis/glute mass.
- Body master is geometry authority; face identity remains controlled separately by the accepted Valenta face-master set.
- Existing Valenta face LoRA trigger: `vltna26`.
- Existing face-LoRA baseline used Z Image Turbo / 512x512 / seed 7 / checkpoint every 100; this is reference information, not yet an approved body-LoRA training configuration.

## Caption audit — status

**NOT YET COMPLETE.**

The Library currently contains the Valenta face-LoRA dataset ZIP and body-reference/master documentation, but no separately indexed Valenta body-training dataset/caption package was found in the `/Dragon cave/Characters/Valenta/` root.

Do not invent or silently reuse the face-LoRA captions for the body run. The actual body image files and their `.txt` captions must be audited together before training.

### Audit must verify

1. Every training image has exactly one intended caption.
2. Image ↔ caption pairing is correct.
3. The body activation token is explicitly decided and used consistently.
4. Captions describe stable body attributes rather than accidentally teaching camera/pose/background/clothing as identity.
5. Face-specific identity language is not allowed to dominate a body LoRA unless intentionally retained for a controlled reason.
6. Body geometry terms that are actually intended to be learned are present and consistent across the dataset.
7. Rejected references, alternate body shapes, glam/pin-up geometry, and non-canonical supporting references are not accidentally included.
8. No caption contains contradictory anatomy/proportion instructions across samples.
9. Caption vocabulary is normalized before training.
10. The final dataset manifest records image name, caption name, caption text, and audit verdict for every sample.

## Important boundary

No local training is launched by this repository preparation step. Training parameters, trigger token, and final captions remain open until the actual body dataset/captions are inspected.
