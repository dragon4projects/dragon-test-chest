# HELGA-CROUCH-CANDIDATE-03 — Reuse Lifecycle Handoff

**Asset:** HELGA-CROUCH-CANDIDATE-03
**Character:** Helga
**Date:** 2026-10-03
**Purpose:** Focused handoff for the reuse lifecycle change.

## Lifecycle change

The asset was previously reusable and is now **not recommended for new production reuse**.

The asset record expresses this as REUSABLE = NO with an explicit local definition: do not select the asset for a new production consuming task.

## What did not change

- Asset identity did not change.
- Originating task did not change.
- Originating project did not change.
- Originating panel did not change.
- Originating decision did not change.
- WITCH Panel 017 remains accepted.
- TEST_PROJECT_B Panel 003 remains an accepted historical consuming use.
- Helga character canon did not change.
- CANONICAL_FOR_HELGA remains NO.

## Existing consumers

1. WITCH / Panel 017 — originating task WITCH-P017-HELGA-CROUCH-001 — decision projects/witch/panels/017/decisions/HELGA_CROUCH_ASSET_DECISION.md
2. TEST_PROJECT_B / Panel 003 — consuming task TESTB-P003-HELGA-REUSE-001 — decision projects/test_project_b/panels/003/decisions/HELGA_REUSE_ASSET_DECISION.md

Old consumers are historical facts. They are not errors created by the current lifecycle change.

## New consumer test

TEST_PROJECT_C / Panel 001 attempted a new use: task TESTC-P001-HELGA-OLD-ASSET-001; decision projects/test_project_c/panels/001/decisions/HELGA_OLD_ASSET_DECISION.md; result REJECTED_FOR_NEW_USE.

## Provenance

Start at assets/characters/helga/HELGA-CROUCH-CANDIDATE-03.md then follow the lifecycle decision, originating WITCH decision, and existing TEST_PROJECT_B consuming decision.

## Important architecture finding

The existing boolean REUSABLE could carry a current YES/NO value, but its meaning was not sufficiently explicit for the lifecycle case.

The minimal tested solution was to keep the field, change its current value to NO, define exactly what NO means for this test, record the lifecycle decision separately, and preserve all historical consuming decisions unchanged.

No global registry or consumer index was added.
