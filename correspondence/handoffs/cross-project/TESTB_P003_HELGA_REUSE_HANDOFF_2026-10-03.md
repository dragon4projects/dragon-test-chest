# TEST_PROJECT_B Panel 003 — Cross-Project Reuse Handoff

**Task:** TESTB-P003-HELGA-REUSE-001
**Project:** TEST_PROJECT_B
**Panel:** 003
**Character:** Helga
**Status:** COMPLETED TEST TASK

## What was required

Panel 003 required Helga at a window.

## What happened

An existing reusable asset was selected instead of creating a new Helga asset:

'assets/characters/helga/HELGA-CROUCH-CANDIDATE-03.md'

## Origin

The asset originated in:

- Project: WITCH
- Panel: 017
- Task: 'WITCH-P017-HELGA-CROUCH-001'
- Decision: 'projects/witch/panels/017/decisions/HELGA_CROUCH_ASSET_DECISION.md'

Its originating provenance remains unchanged.

## Consuming decision

TEST_PROJECT_B accepted the existing asset for Panel 003 in:

'projects/test_project_b/panels/003/decisions/HELGA_REUSE_ASSET_DECISION.md'

The new consuming fact is local to TEST_PROJECT_B. No new asset status was introduced.

## Character boundary

Helga remains reusable and the asset remains non-canonical:

- 'CANONICAL_FOR_CHARACTER = NO'
- 'REUSABLE = YES'

TEST_PROJECT_B does not acquire authority to change Helga canon.

## Read next

1. 'projects/test_project_b/panels/003/PANEL_STATE.md'
2. 'projects/test_project_b/panels/003/decisions/HELGA_REUSE_ASSET_DECISION.md'
3. 'assets/characters/helga/HELGA-CROUCH-CANDIDATE-03.md'
4. 'correspondence/requests/test_project_b/TESTB-P003-HELGA-REUSE-001.md'
5. 'correspondence/requests/witch/WITCH-P017-HELGA-CROUCH-001.md'
6. 'characters/helga/CHARACTER_STATE.md'

## Important limitation

This test records architectural reuse. It does not establish that the crouching asset is visually suitable for a standing-at-window composition.
