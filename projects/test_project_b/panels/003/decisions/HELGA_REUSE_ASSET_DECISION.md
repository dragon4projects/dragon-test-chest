# TEST_PROJECT_B Panel 003 — Helga Reuse Decision

**Task:** TESTB-P003-HELGA-REUSE-001
**Decision:** ACCEPTED FOR TEST_PROJECT_B
**Character:** Helga
**Reused asset:** 'HELGA-CROUCH-CANDIDATE-03'

## Decision

TEST_PROJECT_B Panel 003 will use the existing reusable asset:

'assets/characters/helga/HELGA-CROUCH-CANDIDATE-03.md'

No new Helga asset was created.

## Provenance

- **Originating project:** WITCH
- **Originating panel:** 017
- **Originating task:** WITCH-P017-HELGA-CROUCH-001
- **Originating decision:** 'projects/witch/panels/017/decisions/HELGA_CROUCH_ASSET_DECISION.md'

The originating provenance is preserved. TEST_PROJECT_B is the consuming project, not the owner of the asset's origin.

## Status separation

The asset remains:

- 'GENERATED = YES'
- 'ACCEPTED_FOR_PROJECT = YES' — originally WITCH Panel 017
- 'CANONICAL_FOR_CHARACTER = NO'
- 'REUSABLE = YES'

For this task, the new fact is local consumption:

- 'TEST_PROJECT_B / Panel 003 = ACCEPTED_FOR_USE'

This is recorded as a decision here, not as a new global asset status.

## Suitability boundary

This architecture test deliberately does not claim that a crouching asset is visually suitable for a standing-at-window composition. The test verifies provenance and reuse bookkeeping.

## Ownership / authority

Using the asset does not grant TEST_PROJECT_B authority to alter Helga character canon or rewrite WITCH records.

## Related records

- Request: 'correspondence/requests/test_project_b/TESTB-P003-HELGA-REUSE-001.md'
- Panel state: 'projects/test_project_b/panels/003/PANEL_STATE.md'
- Asset: 'assets/characters/helga/HELGA-CROUCH-CANDIDATE-03.md'
- Originating request: 'correspondence/requests/witch/WITCH-P017-HELGA-CROUCH-001.md'
- Originating decision: 'projects/witch/panels/017/decisions/HELGA_CROUCH_ASSET_DECISION.md'
- Character state: 'characters/helga/CHARACTER_STATE.md'
