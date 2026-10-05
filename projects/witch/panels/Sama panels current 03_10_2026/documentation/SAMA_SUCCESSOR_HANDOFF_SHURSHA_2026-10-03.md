# SAMA SUCCESSOR HANDOFF — SHURSHA → NEXT CLOUD CHAT

**Date:** 2026-10-03  
**Project:** DracoWitch / SAMA videoclip-comic panel production  
**From:** Shursha (Шурша / Шелесточка branch nickname used by Dragon for this chat)  
**Audience:** the next cloud chat inheriting the project folder  
**Language note:** this file is intentionally in English for machine-to-machine transfer. Speak to Dragon in Russian unless he explicitly asks otherwise.

---

# 0. FIRST THING TO DO

Do **not** start generating immediately.

Read this handoff, then inspect the current Library folders and the two designer deliverables if they are mounted/available:

1. `/mnt/data/SAMA_PANEL_ARTIST_HANDOFF_EN_2026-10-03.md`
2. `/mnt/data/SAMA_SUBURBAN_HOUSE_SET_PLAN_v1_2026-10-03.png`

Those two files came from the interior-design track and are intended to carry the resolved SAMA suburban-house set logic forward. If they are not mounted in your runtime, search Library / conversation attachments first. Do not ask Dragon to reconstruct them from memory unless they are genuinely unavailable.

The inherited Library root for this production branch is:

`/DracoWitch/SAMA/`

Your default behavior should be:

> read current masters → read current control docs → inspect references → only then act.

Do not make Dragon repeat decisions that already exist in files.

---

# 1. WHAT THIS PROJECT IS — AND WHAT IT IS NOT

SAMA is a **music-video / comic-panel production** for the DracoWitch song line.

It is not a generic fantasy-art exercise.

The visual grammar is:

- cinematic photorealism;
- lived-in physical realism;
- object-first storytelling;
- domestic details that carry emotional meaning;
- restrained dark-fantasy elements;
- continuity across recurring rooms, objects, marks, stains, shadows, props, clothing and light states.

The current recurring house is a **suburban house set for the videoclip**.

It is **not** the persistent technical `/Dragon cave/.../Dragon House` simulation project.

The clip-world premise is now explicit:

- exterior doors and windows are human scale;
- the house should look like an almost ordinary suburban home;
- Dragon does not advertise himself to neighbors or people outside;
- outside / around people he can take human form;
- inside, privately, he may relax into full Dragon form;
- therefore interior shots may occasionally need Dragon-scale clearance, but the house must not look like a cave, palace, hangar, dungeon, or giant fantasy lair.

This distinction matters. Old floorplan work temporarily over-inflated the set by importing Dragon House occupancy numbers. Shelest corrected that project-boundary mistake.

---

# 2. CURRENT AUTHORITY / PRECEDENCE ORDER

When sources conflict, use this order:

1. **Dragon’s explicit current decision in the live chat.**
2. **Current accepted dedicated environment / prop master** for recurring geometry and identity.
3. **Current accepted panel master** for story truth, composition evidence, mood, object relationships and historical continuity.
4. **Shelest’s current SAMA suburban-house set deliverables** for set topology / room continuity.
5. `SAMA_PANEL_MASTER_SET_ASSET_PRECEDENCE_ADDENDUM_2026-10-03.md`.
6. `SAMA_OBJECT_ASSET_REGISTRY_CURRENT_2026-10-03.md`.
7. other current `00_CONTROL` files.
8. `Panels Sama v3 handoff.md` and `chat Panels Sama backup.md` for branch history.
9. `HANDOFF_HISTORY/` and old drafts for provenance only.

Important correction from this branch:

> **A panel master is not immutable architectural geometry.**

A panel may be rebuilt later if a dedicated set/prop master gives better continuity, while preserving the panel’s story truth.

Example: P18 remains the accepted story image for “Dragon stopped searching / fire nearly died”, but the newly accepted hearth asset now has cleaner reusable geometry. If P18 is rebuilt later, it should keep its narrative function while adopting the canonical hearth.

Also remember the older Google Drive reconciliation rule:

- P01–P12 and the basket were recovered / verified against `/Google Drive/Песни/Панели/`.
- Those files remain authoritative evidence for the historical accepted panel images.
- Do **not** use that rule to override later explicit set/asset continuity decisions.

---

# 3. DIRECTORY MAP — WHAT LIVES WHERE AND WHY

Canonical working root:

```text
/DracoWitch/SAMA/
├── 00_CONTROL/
├── 05_DOCS_CURRENT/
│   └── HANDOFF_HISTORY/
├── 90_ARCHIVE/
├── Panels/
│   ├── Master/
│   ├── References/
│   └── Trash/
├── Objects/
│   ├── Master/
│   ├── References/
│   └── Trash/
└── Environments/
    └── Master/
```

## 3.1 `Panels/Master/`

Contains only **explicitly accepted canonical panel images**.

Panel naming:

`pNN-GG-master.png`

- `NN` = panel number.
- `GG` = chronological generation/order number.
- `master` = user accepted this exact image.

Never “improve” a master silently.

If Dragon says **“master”**, save **that exact accepted image** to `Master/` immediately. Do not regenerate a prettier substitute.

## 3.2 `Panels/References/`

Useful but non-canonical material:

- unresolved candidates;
- visual sources;
- page composites;
- drafts with useful geometry;
- earlier accepted-looking versions that were never explicitly declared master.

Reference means “useful, but not authoritative.”

## 3.3 `Panels/Trash/`

Only confirmed rejected panel generations.

Trash is not “ugly therefore useless”; it is **proven rejected history**.

Keep chronology when useful because it helps reconstruct why a later master exists.

## 3.4 `Objects/Master/`

Contains reusable canonical prop identities / geometry.

Current naming supersedes the old `objNN...` convention:

`ASSET.<CLASS>.<OBJECT>[.<VARIANT>].NNN-status.ext`

Examples:

- `ASSET.PROP.HEARTH.001-master.png`
- `ASSET.PROP.LINGERIE.SET.BLACK.001-master.png`
- `ASSET.PROP.SHOES.LAPIGALLE.RED.001-master.png`

The current object registry is:

`/DracoWitch/SAMA/00_CONTROL/SAMA_OBJECT_ASSET_REGISTRY_CURRENT_2026-10-03.md`

Important: `SAMA_ASSET_STRUCTURE_2026-10-02.md` still contains the **legacy object naming**. Use it for panel-folder logic, but use the **2026-10-03 object registry** for current prop names.

## 3.5 `Objects/References/`

Source photographs and identity references.

Rule:

- do not promote a source photo itself to a generated master unless Dragon explicitly says that exact file is the master;
- do not delete real references after a master is created;
- references may encode details a generation omitted (underside, rear pattern, hardware, actual wear, etc.).

## 3.6 `Objects/Trash/`

Rejected reusable-object generations.

Do not dump unresolved candidates here merely because you prefer another one.

## 3.7 `Environments/Master/`

Reusable architectural/environment shells.

Current accepted environment:

`ASSET.ENV.ENTRYZONE.001-master.png`

This is not “a pretty entry scene”; it is a continuity anchor.

## 3.8 `00_CONTROL/`

Operational truth, naming, scope corrections, set logic, precedence rules.

Read before mutating structure.

Useful files include:

- `SAMA_CURRENT_CONTROL_2026-10-02.md`
- `SAMA_GDRIVE_MASTER_RECONCILIATION_2026-10-02.md`
- `SAMA_OBJECT_ASSET_REGISTRY_CURRENT_2026-10-03.md`
- `SAMA_PANEL_MASTER_SET_ASSET_PRECEDENCE_ADDENDUM_2026-10-03.md`
- `SAMA_SUBURBAN_HOUSE_SET_SCOPE_CLARIFICATION_2026-10-03.md`
- `DRAGON_HOUSE_ASSET_REGISTRY_2026-10-02.md` — despite the name, this contains useful SAMA house-asset extraction notes; read it through the newer scope clarification.
- historical provisional floorplans V3–V5 — useful as continuity archaeology, not final set canon after Shelest’s replan.

## 3.9 `05_DOCS_CURRENT/`

Current long-form narrative / production documentation.

Contains:

- `Panels Sama v3 handoff.md`
- `chat Panels Sama backup.md`
- `Ведьмочка видеоряд.md`
- `HANDOFF_HISTORY/`

The history folder is valuable when current docs omit a reason, but do not resurrect superseded decisions automatically.

## 3.10 `90_ARCHIVE/`

Superseded inventories / old bookkeeping. Provenance only.

---

# 4. CURRENT PANEL MASTER INVENTORY

At handoff time, the Library physically contains accepted masters for **P01 through P18**:

```text
p01-03-master.png
p02-10-master.png
p03-02-master.png
p04-04-master.png
p05-04-master.png
p06-05-master.png
p07-00-master.png
p08-03-master.png
p09-00-master.png
p10-00-master.png
p11-00-master.png
p12-00-master.png
p13-03-master.png
p14-08-master.png
p15-05-master.png
p16-01-master.png
p17-02-master.png
p18-00-master.png
```

P19 has **no master**.

Current rejected P19 attempt:

`/DracoWitch/SAMA/Panels/Trash/p19-00-trash.png`

That rejected image is the literal “three dragon heads via reflections/crystal” attempt.

Do not reuse it.

Dragon explicitly changed the concept to **no characters**.

## 4.1 P16 current visual reality

`p16-01-master.png`

Accepted visual:
- workbench / beauty tools;
- dark chalkboard;
- simple girl → adult woman transformation sketch;
- crown above as the goal/status endpoint;
- red nail-polish bottles;
- subtle magical/technical tone.

The old handoff called it “planned”; that status is stale. It is now MASTER.

## 4.2 P17 current visual reality

`p17-02-master.png`

Accepted visual:
- view from an upper apartment window;
- wet upscale street;
- luxury cars;
- suited men / elite entrance atmosphere;
- warm exterior status-world glow.

The old handoff called it “planned”; that status is stale. It is now MASTER.

## 4.3 P18 current visual reality

`p18-00-master.png`

Accepted story truth:
- old table foreground;
- phone;
- old tickets / travel evidence;
- dust / cobwebs;
- hearth nearly extinguished;
- quiet “Dragon stopped searching” mood.

Its **story** remains canon.

Its hearth geometry may later be rebuilt from `ASSET.PROP.HEARTH.001-master.png`.

---

# 5. P00 / PAGE TEMPLATE WARNING

`p00` is reserved for a **clean blank page/container**:

- binding;
- substrate;
- header/footer structure;
- no story panels;
- no panel text.

The assembled six-panel page:

`page01-00-reference.png`

is **not** p00.

Do not rename it to p00.

A true p00 master was still unresolved in this branch.

---

# 6. CURRENT REUSABLE MASTER ASSETS

## 6.1 Environment

### Entry wall
`/DracoWitch/SAMA/Environments/Master/ASSET.ENV.ENTRYZONE.001-master.png`

Canonical intent:

- full-width wall;
- garden door on left;
- window to the right of the door;
- window is human-sized and begins roughly ~1 m above floor;
- window is not floor-to-ceiling;
- no radiator/sill architecture forced into it;
- restrained old-house wall treatment;
- human-scale exterior opening;
- modest suburban-home logic.

This was corrected after an earlier wrong “window / wall” interpretation.

## 6.2 Hearth

`ASSET.PROP.HEARTH.001-master.png`

Accepted after direct comparison with P18 and later scope logic.

Identity:

- old domestic masonry hearth;
- integrated into thick wall;
- rough dirty off-white / warm-grey plaster;
- broad dark firebox opening;
- heavy lower hearth slab;
- soot, ash, age, repaired handmade surface;
- no ornamental fantasy mantel;
- no decorative castle treatment.

Base master = extinguished structural state.

Later states should preserve geometry:

- EMBER
- CALM
- BRIGHT

The fire state changes. The hearth body should not mutate.

## 6.3 Dining table

`ASSET.PROP.DININGTABLE.001-master.png`

Accepted after correcting initial height/proportions.

Use this as the recurring dining/living table geometry when a shot needs the same object.

## 6.4 Fur rug

`ASSET.PROP.FURRUG.001-master.png`

Accepted after removing the “patchwork / stitched multi-hide” artifact and fixing the central radial fur convergence.

Identity:

- large pale long-fur hide/rug;
- warm ivory / cream;
- irregular organic outline;
- lived-in, slightly compressed pile;
- not a synthetic rectangular shag rug;
- no obvious multi-hide seams.

## 6.5 Basket / wastebasket

`ASSET.PROP.BASKET.001-master.png`

Historical exact master; originally Drive-reconciled.

Do not redesign casually.

## 6.6 Broom

`ASSET.PROP.BROOM.001-master.png`

Simple traditional practical broom.

Source reference retained:

`ASSET.PROP.BROOM.001-reference-source.jpg`

## 6.7 Lingerie

Accepted masters:

```text
ASSET.PROP.LINGERIE.BRA.BLACK.001-master.png
ASSET.PROP.LINGERIE.PANTIES.BLACK.001-master.png
ASSET.PROP.LINGERIE.SET.BLACK.001-master.png
ASSET.PROP.LINGERIE.SET.BURGUNDY.001-master.png
```

The isolated bra/panties remain useful components even though the full black set also exists.

## 6.8 Shoes

Accepted:

```text
ASSET.PROP.SHOES.LAPIGALLE.RED.001-master.png
ASSET.PROP.SHOES.ROSAZ100.BLACK.001-master.png
ASSET.PROP.SHOES.BRIGITTE100.BLACK.001-master.png
```

Product identity references were supplied by Dragon from real retail pages.

Object-count discipline matters: “one pair” means exactly two matching shoes.

## 6.9 Mugs — current state at handoff

Dragon owns / uses a real mug family as reference.

Identity:

- matte black ceramic exterior;
- colored glossy interior;
- matching thin multi-line retro geometric pattern around body;
- **no saucers in SAMA asset use**;
- red = Dragon’s mug;
- blue = guest mug.

Reference photos were stored in:

`/DracoWitch/SAMA/Objects/References/`

as:

```text
ASSET.PROP.MUG.REF.001.jpg
...
ASSET.PROP.MUG.REF.007.jpg
ASSET.PROP.MUG.REF.008-FULL-PATTERN.jpg
```

The full-pattern reference is especially important because it proves how the line graphic wraps around the body.

Also note the underside reference: there is **no red colored ring/band on the bottom exterior**. A generated red base stripe was explicitly rejected.

Accepted red masters:

```text
ASSET.PROP.MUG.RED.001-SIDE-A-master.png
ASSET.PROP.MUG.RED.001-SIDE-B-master.png
```

Side A:
- handle left;
- long rounded line loop;
- no separate circle.

Side B:
- handle right;
- long loop plus separate concentric circle near handle.

Both are accepted.

**Blue mug is NOT yet master.**

Several blue generations were close but rejected because the body/handle geometry drifted relative to the accepted red mug.

Owner rule:

> red and blue are the same mug model; only the color family changes.

The next blue pass must use the accepted red geometry as the visual identity and change only:
- red interior → blue interior;
- red line graphic → blue line graphic.

Do not silently change:
- body height;
- taper;
- upper diameter;
- handle thickness;
- handle placement;
- pattern geometry.

At the moment Dragon told us to stop working, BLUE SIDE A was still in correction, and BLUE SIDE B had not yet been finalized.

---

# 7. CURRENT HOUSE / SET LOGIC

Interior designer: **Shelest**.

Important naming note:
Dragon explicitly said the Russian name **Шелест is invariant / not declined**. Keep it as “Шелест” in Russian regardless of grammatical case.

## 7.1 Old provisional topology

Before Shelest’s dedicated replan, the working relative arrangement was:

- central = dining / living room;
- left wing = office + entry/hall split vertically;
- right wing = library full height;
- dining table near center;
- hearth on one wall;
- shadow wall perpendicular to hearth;
- Dragon resting area in living room.

The old V5 dimensional sketch inflated this to giant Dragon-scale dimensions using a separate technical occupancy proxy.

That dimensional model is now a **historical sanity sketch only** for SAMA.

Do not treat its 76 m footprint as set canon.

## 7.2 Current set scope

From Shelest’s correction:

Canonical SAMA set targets are:

- room shell proportions;
- master walls;
- fixed door/window positions;
- hearth position;
- shadow wall;
- passages;
- dining table;
- office work surface;
- library shelving / openings;
- entry zone;
- material palette;
- lighting continuity;
- panel-to-master mapping.

Do not import:
- runtime navigation;
- pathfinding;
- persistent simulation topology;
- Dragon House checkpoint suite;
- full giant circulation system;

unless a specific panel actually needs a local scale sanity check.

## 7.3 Exterior / entry rule

Human-scale exterior.

Door to garden / outside and windows are ordinary human-house size.

Dragon can be in human form outside / with people.

Inside he can use full form.

This is why the entry should never look like a hangar door made for a full-size Dragon.

---

# 8. OWNER’S CURRENT PANEL IDEAS — P19 THROUGH P30

These were explicitly supplied by Dragon and should be treated as the current concept queue unless he changes them.

## P19 — “three heads” without characters

**No characters.**

Visual idea:

- one wide pillow;
- three distinct indentations / dents where three heads have rested;
- an ajar / partly open door.

Meaning:
three internal Dragon “heads/voices” are conveyed by aftermath, not literal dragons.

Do not resurrect:
- three dragon heads;
- mirrors;
- obsidian;
- crystal reflections;
- characters.

`p19-00-trash.png` is the failed version of the abandoned literal-reflection concept.

## P20 — rational / tactical mind

Use a recurring table from earlier panels.

On it:

- a couple of “smart” books;
- one titled `Квантовая физика для драконов` (“Quantum Physics for Dragons”);
- one titled `Теория лжи` (“Theory of Lies”);
- a sheet with a room/floor schematic and arrows marking exits.

Keep it object-first.

Avoid stuffing the frame with ten books or turning it into a generic wizard desk.

## P21 — fire returned / damage + dead romance

- hearth from canonical hearth asset;
- bright, vigorous flame;
- foreground body armor / bulletproof vest;
- vest visibly punctured by something large-caliber;
- one once-luxurious bouquet of roses, now badly wilted.

No need for characters.

## P22 — burn the witch baggage

Inside the recurring wastebasket / bin:

- broom broken into two pieces;
- scattered female underwear using the current lingerie masters;
- about five roses;
- some rose petals;
- champagne bottle;
- spilled puddle near / from bottle;
- the whole mess burning.

Important:
- broom must be visibly broken;
- do not multiply lingerie into a store display;
- keep basket identity;
- fire should read as physical fire in contents, not magical aura.

## P23 — wet arrival at the door

Use the established entry-zone architecture.

- open door;
- footprints in snow outside;
- window to the **right** of the door;
- through that window: silhouette of a wet girl inside / at the entry.

Dragon said he would find/provide the girl reference later.

Do not invent a canonical girl identity without that reference.

## P24 — aftermath in entry

Same entry/open-door continuity.

On the floor:

- wet puddle dripped from her;
- disposable coffee cup;
- a stone.

Keep the entry architecture consistent with `ASSET.ENV.ENTRYZONE.001-master.png`.

## P25 — calm hearth / cigarette

- same hearth;
- calm steady fire;
- foreground hand holding cigarette;
- use Dragon’s provided cigarette/hand reference when available / assigned.

The hand is the only body fragment needed.

## P26 — ignition close-up

Same physical scene family as P25, tighter.

- close-up cigarette;
- narrow stream/tongue of flame igniting it;
- Dragon’s hand and Dragon’s muzzle should **not** be visible.

The flame is causal, not a giant fantasy fireball.

## P27 — shadow intimacy callback

Find / use the earlier shadow-wall panel where she puts her feet under Dragon for warmth as the continuity anchor.

New composition:

- closer crop;
- solid projected silhouettes on the same wall;
- same girl;
- her feet are now already tucked under / beneath Dragon;
- Dragon wing above;
- she lies on her side;
- she props her head with one hand.

This is a shadow scene, not a literal detailed character portrait.

Audit silhouette geometry carefully.

## P28 — settled domestic fire

- hearth with steady even flame;
- coffee mugs in foreground;
- ashtray with cigarette butts.

Dragon said this may echo an early panel (he guessed “second or fourth”), but that exact source should be confirmed visually before generation. Do not invent which old panel he meant.

Use canonical red/blue mugs once both variants are finished.

## P29 — absence / draft

Use recurring table.

- on floor, dust pattern / clean negative space shows where a travel bag used to stand;
- on table, crumpled draft page;
- a visible text fragment:
  `"... вернись..."`

Do not over-write the letter. The fragment is enough.

## P30 — open door, no tracks

- hearth;
- bright flame;
- open door;
- deep snow outside;
- **no footprints** in the snow.

The absence of tracks is the point.

---

# 9. FLOW: HOW DRAGON EXPECTS PANEL GENERATION TO WORK

This is extremely important. A successor that gets the flow wrong wastes turns and breaks continuity.

The working protocol is nicknamed **Hitroshka**.

---

# 9.1 VARIATION A — NEW PANEL: BREAKER FIRST

Dragon may send only a Scene ID or paste the breaker himself.

Example:

```text
PN.WITCH.P19.001

NEW PANEL IMAGE.
Independent image.
Start from a fresh composition.

Scene ID: PN.WITCH.P19.001.
Treat this as a new visual scene.
Use only the references and instructions explicitly assigned to this Scene ID.
Establish fresh framing, camera, lighting, composition and scene geometry.

Do not inherit composition, objects, camera, lighting, props, spatial arrangement or visual residue from P18 or any previous panel.

This turn defines only the new scene boundary.

The full scene specification will follow in the next turn.
```

If he has only supplied the Scene ID / asked for “breaker”, respond with **breaker only**.

Do not append the full prompt in the same turn.

Why:
the generator conversation can carry visual residue from the previous scene. The breaker creates a clean conceptual boundary.

Dragon then pastes the breaker back.

Only after that do you give the full scene spec.

---

# 9.2 VARIATION B — NEW ASSET: BREAKER FIRST

Same idea for reusable objects.

Example:

```text
ASSET.PROP.FURRUG.001

NEW ASSET IMAGE.
Independent image.
Start from a fresh composition.

Scene ID: ASSET.PROP.FURRUG.001.
Treat this as a completely new standalone reusable prop asset.

Use only the references and instructions explicitly assigned to this Scene ID.

Do not inherit composition, camera, lighting, props, people, Dragon, fireplace geometry or spatial arrangement from previous generations.

This turn defines only the new asset boundary.

The full asset specification and reference roles will follow in the next turn.
```

Again:

breaker only → Dragon pastes it back → then full spec.

---

# 9.3 VARIATION C — FULL SPEC AFTER BREAKER

Structured full prompt should be explicit.

Recommended structure:

```text
SCENE / ASSET ID

OPERATION

REFERENCE ROLES

PRIMARY SUBJECT / OBJECT

CANONICAL IDENTITY

COMPOSITION / CAMERA

MATERIALS / PHYSICAL REALISM

LIGHTING

PRESERVE

IMPORTANT CONSTRAINTS

FINAL GOAL
```

Reference role discipline:

```text
REFERENCE 1 — PRIMARY IDENTITY / STRUCTURE.
REFERENCE 2 — MATERIAL / COLOR ONLY.
REFERENCE 3 — LIGHTING ONLY.
```

Never throw five references in without assigning jobs.

---

# 9.4 VARIATION D — EDIT CURRENT ONLY

For surgical corrections:

```text
[ID]-E1

EDIT CURRENT IMAGE ONLY.

PRESERVE
- ...
- ...
- ...

CHANGE ONLY:
[one major class of correction]

FINAL GOAL
...

Preserve everything else.
```

Example from the hearth:

- keep camera;
- keep extinguished state;
- keep plaster;
- change only architectural integration / firebox / ledge / soot.

Do not redesign the whole image because one edge is wrong.

---

# 9.5 VARIATION E — CHECKPOINT / ROLLBACK

If E3 damages what E2 fixed:

do **not** continue editing E3.

Return to E2 and branch from there.

Conceptually:

`BASE → E1 PASS → E2 PASS → E3 FAIL → ROLLBACK E2 → E4`

This matters because the generator tends to “solve” one problem by mutating three accepted ones.

---

# 9.6 VARIATION F — COLOR / VARIANT LOCK

Mug lesson:

When the same real object exists in red and blue, do not ask the generator to “make a similar blue cup”.

Instead:

- choose one accepted geometry master;
- lock body;
- lock handle;
- lock camera;
- lock graphic placement;
- change only color fields.

Current rule:

red mug = Dragon;
blue mug = guests;
same physical model.

The blue generation kept drifting taller/narrower with a different handle. Dragon correctly rejected it.

---

# 9.7 VARIATION G — REAL REFERENCE INTAKE

When Dragon uploads several real object photos:

1. inspect all images;
2. identify which photo proves which property;
3. preserve them in `Objects/References/`;
4. name them systematically;
5. if one image reveals an otherwise invisible detail (underside, rear pattern, clasp, sole, etc.), record it in the object notes;
6. only then generate / extract the reusable master.

Example: mug references.

One later photo showed the complete wraparound line pattern.
Another underside photo proved there is no red base ring.
Those details overruled a visually plausible generated guess.

Do not assume the first reference tells the whole object.

---

# 9.8 VARIATION H — EXTRACT VS GENERATE

Dragon sometimes says:

> “your choice: generate or cut it out yourself and make it master immediately.”

Use judgment.

Prefer extraction/crop when:
- the source already contains a clean canonical object;
- perspective/material/identity are all correct;
- removal from context will not destroy the object.

Prefer regeneration when:
- source is obscured;
- perspective is unusable;
- object needs multiple clean canonical sides;
- the object is mixed with human anatomy / clutter;
- a reusable asset needs neutral presentation.

Never claim an extraction is a new canonical identity if it silently changed details.

---

# 9.9 VARIATION I — PANEL MASTER VS DEDICATED ASSET

This branch established a crucial rule.