# Test Request: TESTC-P001-HELGA-OLD-ASSET-001

**Task ID:** TESTC-P001-HELGA-OLD-ASSET-001
**Status:** REJECTED
**Requester:** TEST_PROJECT_C / Panel 001
**Requested party:** Character production / Helga
**Purpose:** Test whether a newly arriving project can distinguish historical reuse from current reuse recommendation.

## Request

Panel 001 proposes using HELGA-CROUCH-CANDIDATE-03.

The asset was previously reusable and has existing production consumers.

## Current metadata

The asset record now states REUSABLE = NO and explicitly defines that state as: do not select this asset for a new production consuming task.

## Resolution

**REJECTED_FOR_NEW_USE**

TEST_PROJECT_C does not select HELGA-CROUCH-CANDIDATE-03 for this new production task.

This is a new local consuming decision. It does not alter the historical WITCH or TEST_PROJECT_B uses.

## Important distinction

The rejection means: do not use this asset for this new production task under the current reuse recommendation.

It does **not** mean WITCH Panel 017 was wrong, TEST_PROJECT_B Panel 003 was wrong, the asset never was reusable, the asset is deleted, Helga canon changed, or the asset became canonical.

## Related records

- Asset: assets/characters/helga/HELGA-CROUCH-CANDIDATE-03.md
- Lifecycle decision: assets/characters/helga/HELGA-CROUCH-CANDIDATE-03_LIFECYCLE_DECISION.md
- WITCH origin: projects/witch/panels/017/decisions/HELGA_CROUCH_ASSET_DECISION.md
- TEST_PROJECT_B consumption: projects/test_project_b/panels/003/decisions/HELGA_REUSE_ASSET_DECISION.md
- Panel state: projects/test_project_c/panels/001/PANEL_STATE.md
