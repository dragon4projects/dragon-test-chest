# Asset Record — HELGA-CROUCH-CANDIDATE-04

**Asset ID:** HELGA-CROUCH-CANDIDATE-04
**Character:** Helga
**Originating task:** TESTH-P001-HELGA-REPLACEMENT-001
**Originating project:** TEST_PROJECT_H
**Originating panel:** 001
**Status:** GENERATED / ACCEPTED_FOR_PROJECT
**Scope:** Replacement asset for TEST_PROJECT_H / Panel 001
**Reusable:** NO
**Canonical for Helga:** NO
**Provenance:** Created as an improved replacement candidate for TEST_PROJECT_H / Panel 001. Accepted for this project/panel only.

## Current reuse state

This asset is currently not designated for new production reuse. This test does not establish that the asset is defective or invalid; it only limits the scope of the new asset to the tested consumer.

## Replacement context

HELGA-CROUCH-CANDIDATE-04 was created after TEST_PROJECT_H / Panel 001 had already accepted HELGA-CROUCH-CANDIDATE-03 and a later review found that an improved variant was preferable for this consumer.

The replacement is a new asset identity. It does not rewrite HELGA-CROUCH-CANDIDATE-03.

## Related records

- Character: characters/helga/CHARACTER_STATE.md
- Originating request / replacement task: correspondence/requests/test_project_h/TESTH-P001-HELGA-REPLACEMENT-001.md
- Initial consumer decision: projects/test_project_h/panels/001/decisions/HELGA_INITIAL_ASSET_DECISION.md
- Replacement decision: projects/test_project_h/panels/001/decisions/HELGA_ASSET_REPLACEMENT_DECISION.md
- Current consumer decision: projects/test_project_h/panels/001/decisions/HELGA_CURRENT_ASSET_DECISION.md
- Replaced asset: assets/characters/helga/HELGA-CROUCH-CANDIDATE-03.md

## Physical binary

The Test #9 physical representation is stored in the repository at:
- Primary binary: assets/characters/helga/binary/HELGA-CROUCH-CANDIDATE-04-modified.png

The primary binary is a real 1×1 PNG test fixture stored in Git. It is deliberately small; its purpose is to test the record ↔ physical-file relationship, not to represent a production image.

For the same test, two additional physical fixtures exist:
- Copy with a different path: assets/characters/helga/binary/HELGA-CROUCH-CANDIDATE-04-copy.png
- Modified binary fixture: assets/characters/helga/binary/HELGA-CROUCH-CANDIDATE-04-modified.png

The primary and copy currently resolve to the same Git blob SHA, while the modified fixture resolves to a different Git blob SHA. These are Test #9 observations, not additional asset identities.


## Test #9 branch observation

On the temporary Test #9 missing-binary observation branch only, the primary binary path was removed from the current tree while this asset record remained present. The record therefore survived independently of the physical file.

The branch also points the same asset record at the existing modified binary fixture for a path-change observation. This is a test-branch experiment only and is not the accepted main-branch state.
