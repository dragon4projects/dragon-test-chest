# SAMA PANEL INVENTORY — 2026-10-02

Project: DracoWitch / SAMA grimoire panels
Scope: P01–P15
Purpose: physical-file and status audit before folder cleanup.
Rule for this audit: no panel files were moved, renamed, deleted, or replaced.

## Status legend

- MASTER — user/current canon says the panel is locked.
- CONCEPT_MASTER — current visual reference exists, but panel is not pixel-final.
- CURRENT — latest working standalone reference, not locked.
- MASTER / BYTES MISSING — master was selected, but exact master file is not verified in Library.
- EMBEDDED ONLY — current authority is a panel embedded inside a composite page rather than a standalone panel file.

## Inventory

| Panel | Current status | Current visual authority / file | Physical situation | Cleanup note |
|---|---|---|---|---|
| P01 | CONCEPT_MASTER / EMBEDDED ONLY | `Винтажный гримуар с шестью воспоминаниями.png` — P01 | Current authority is inside the six-panel composite. Old Runway cave/moon Panel 01 branch is historical and belongs to an earlier visual direction. | Extract/copy P01 from composite later if a standalone asset is needed. Do not revive old cave/moon Runway candidate as current P01. |
| P02 | CONCEPT_MASTER / EMBEDDED ONLY | `Винтажный гримуар с шестью воспоминаниями.png` — P02 | Several standalone wardrobe candidates exist, including `Антикварный шкаф коллекционера с зелёным светом.png`, but none is documented as the final standalone authority. | Keep candidates as history/reference; composite P02 remains current authority. |
| P03 | CONCEPT_MASTER / EMBEDDED ONLY | `Винтажный гримуар с шестью воспоминаниями.png` — P03 | Current authority is the winter-roof panel inside the composite. A standalone `Зимний город с чашкой на крыше.png` exists, but current registry still points to the composite. | Do not silently promote the standalone winter-roof image without visual confirmation. |
| P04 | CONCEPT_MASTER / EMBEDDED ONLY | `Винтажный гримуар с шестью воспоминаниями.png` — P04 | Current Dragon-workdesk authority is embedded in the composite. It is also the current concept reference for mug / ashtray-cauldron / cigarette mess. | Later extraction is useful; do not redesign props during cleanup. |
| P05 | CONCEPT_MASTER / CURRENT standalone | `P05_CURRENT_корзина_принцесса_2026-09-29.png` | Standalone working panel exists under `/Артефакты/`. It supersedes the older basket appearance in the composite for basket continuity, but is explicitly not pixel-final. | Must leave `/Артефакты/` during later cleanup because it is a SAMA panel asset, not a Dragon House artifact master. |
| P06 | CONCEPT_MASTER / EMBEDDED ONLY | `Винтажный гримуар с шестью воспоминаниями.png` — P06 | Several mirror/crown standalone concepts exist (`Корона в золотом отражении.png`, `Роскошный беспорядок перед зеркалом.png`, etc.), but no standalone one is documented as current final authority. | Keep concepts as history/reference. Composite P06 remains authority unless user selects a standalone. |
| P07 | MASTER | `P07_MASTER_ледяные_стопы_тени_2026-09-30.png` | Standalone master exists under `/Артефакты/`. | Later move/copy into SAMA masters folder; preserve exact file. |
| P08 | MASTER / BYTES NOT VERIFIED | User-selected shared-image master; documented share source. | Documentation says the exact selected master bytes were not copied into `/Артефакты`. `Слоёные угощения в тени дракона.png` visually matches much of the canon, but provenance is not verified enough to silently declare it the exact master. | Needs one provenance-resolution step before cleanup: recover exact shared master or confirm the matching Library image with user. |
| P09 | MASTER | `P09_MASTER_не_спасать_не_приручать_2026-09-29.png` | Standalone master exists under `/Артефакты/`. | Later relocate into SAMA masters; recurring basket object master itself stays with Dragon House artifacts. |
| P10 | MASTER | `P10_MASTER_открытая_дверь_следы_2026-09-29.png` | Standalone master exists under `/Артефакты/`. | Later relocate into SAMA masters. |
| P11 | MASTER | `P11_MASTER_билет_к_Дракону_2026-09-30.png` | Standalone master exists under `/Артефакты/`. Older docs saying MENTION_ONLY are stale. | Later relocate into SAMA masters. |
| P12 | MASTER | `P12_MASTER_корона_кружево_подвески_метла_2026-09-30.png` | Standalone master exists under `/Артефакты/`. Older docs saying MENTION_ONLY are stale. | Later relocate into SAMA masters. |
| P13 | MASTER / filename not canonical | `Роскошный алый вечер в уютной гостиной.png` is the strongest identified final candidate and matches the final red-lingerie/red-shoes semantics. | Master status is explicit in current handoff, but the image was never normalized to a P13 master filename. | Before moving, do one visual/provenance confirmation; then rename to canonical P13 master name. |
| P14 | MASTER | `Отражение вечернего платья и украшения.png` = `PN.WITCH.P14.001-E3` | Exact final asset is identified; it currently has a human-readable generator filename rather than canonical P14 master filename. | Safe candidate for later canonical rename/move after user approves cleanup. |
| P15 | MASTER | `/DracoWitch/Witch song video materials/PN.WITCH.P15.001-MASTER.png` | Correctly named and already stored with SAMA project materials. Later E4 is rejected. | This is the cleanest current panel asset. Leave untouched except moving into a future dedicated master folder if desired. |

## Current physical split

### `/Артефакты/`
Currently mixes Dragon House artifacts with SAMA panel assets:
- `P05_CURRENT_корзина_принцесса_2026-09-29.png`
- `P07_MASTER_ледяные_стопы_тени_2026-09-30.png`
- `P09_MASTER_не_спасать_не_приручать_2026-09-29.png`
- `P10_MASTER_открытая_дверь_следы_2026-09-29.png`
- `P11_MASTER_билет_к_Дракону_2026-09-30.png`
- `P12_MASTER_корона_кружево_подвески_метла_2026-09-30.png`

This is the main structural contamination to fix later.

### `/DracoWitch/Witch song video materials/`
Contains current SAMA documentation, old drafts/archives/storyboards, and:
- `PN.WITCH.P15.001-MASTER.png`

### Other Library locations / generated-image pool
Current P13 and P14 final images were generated outside a dedicated panel-master folder:
- P13 candidate/final: `Роскошный алый вечер в уютной гостиной.png`
- P14 final: `Отражение вечернего платья и украшения.png`

### First-page composite
P01–P04 and P06 remain canonically represented inside:
- `Винтажный гримуар с шестью воспоминаниями.png`

P05 has a newer standalone current reference.

## Important unresolved seams before any move/rename

1. P08 exact master bytes/provenance must be resolved.
2. P13 final file identity should be visually confirmed once before canonical rename.
3. P01–P04 and P06 have no documented standalone final panel files; the composite is the authority.
4. P05 is current but not pixel-final; do not label it MASTER merely to make the folder tree pretty.

## Recommended target structure — NOT CREATED YET

```text
/DracoWitch/SAMA/
├── 00_CONTROL/
├── 01_PANEL_MASTERS/
├── 02_PANEL_CURRENT_WIP/
├── 03_PAGE_MASTERS/
├── 04_REFERENCES/
├── 05_DOCS_CURRENT/
└── 90_ARCHIVE/
```

Suggested placement later:
- `01_PANEL_MASTERS/`: P07–P15 masters, except unresolved P08 until recovered.
- `02_PANEL_CURRENT_WIP/`: P05.
- `03_PAGE_MASTERS/`: six-panel composite and page-template masters.
- `04_REFERENCES/`: useful standalone historical candidates, copied/moved only after dependency check.
- `05_DOCS_CURRENT/`: current handoff, backup, workflow notes, this inventory.
- `90_ARCHIVE/`: stale drafts/handoffs only after explicit review.

No mutation beyond creating this inventory was performed during this audit.