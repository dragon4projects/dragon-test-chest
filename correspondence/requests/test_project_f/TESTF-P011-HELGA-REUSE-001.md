# Test Request: TESTF-P011-HELGA-REUSE-001

**Task ID:** TESTF-P011-HELGA-REUSE-001
**Status:** ACCEPTED
**Requester:** TEST_PROJECT_F / Panel 011
**Requested party:** Character production / Helga
**Purpose:** Test another independent consumer of the same asset, with no dependency on TEST_PROJECT_E.

## Request

Panel 011 requires a Helga asset and may reuse an existing reusable asset when suitable.

Required result:
- character: Helga
- project: TEST_PROJECT_F
- panel: 011
- reuse existing asset if suitable: YES

## Resolution

**ACCEPTED_FOR_USE**

TEST_PROJECT_F / Panel 011 uses:
`HELGA-CROUCH-CANDIDATE-03`

No new asset record was created.

## Scope

This request is independent of TEST_PROJECT_E and does not modify any other consumer or lifecycle record.

## Related records

- Panel state: `projects/test_project_f/panels/011/PANEL_STATE.md`
- Decision: `projects/test_project_f/panels/011/decisions/HELGA_REUSE_ASSET_DECISION.md`
- Asset: `assets/characters/helga/HELGA-CROUCH-CANDIDATE-03.md`
