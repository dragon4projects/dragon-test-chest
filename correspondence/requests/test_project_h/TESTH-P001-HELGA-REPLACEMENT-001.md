# Test Request: TESTH-P001-HELGA-REPLACEMENT-001

**Task ID:** TESTH-P001-HELGA-REPLACEMENT-001
**Status:** ACCEPTED
**Requester:** TEST_PROJECT_H / Panel 001
**Purpose:** Test whether one consumer can replace an already accepted asset with a new asset while preserving the historical decision.

## Initial state

TEST_PROJECT_H / Panel 001 initially selected:
HELGA-CROUCH-CANDIDATE-03

The initial decision was ACCEPTED_FOR_USE.

## Replacement reason

A later review found that the consumer required an improved variant of the crouching asset. The existing asset remained historically accepted, but a newly generated variant was preferred for this specific panel.

This is a consumer-specific replacement reason. It does not claim that HELGA-CROUCH-CANDIDATE-03 became globally invalid or unusable.

## Replacement

Create and accept:
HELGA-CROUCH-CANDIDATE-04

for the current TEST_PROJECT_H / Panel 001 state.

## Historical boundary

The original acceptance of HELGA-CROUCH-CANDIDATE-03 remains unchanged.

The replacement is recorded as a new fact rather than an edit to the historical decision.

## Related records

- Original asset: assets/characters/helga/HELGA-CROUCH-CANDIDATE-03.md
- Replacement asset: assets/characters/helga/HELGA-CROUCH-CANDIDATE-04.md
- Panel state: projects/test_project_h/panels/001/PANEL_STATE.md
- Initial decision: projects/test_project_h/panels/001/decisions/HELGA_INITIAL_ASSET_DECISION.md
- Replacement decision: projects/test_project_h/panels/001/decisions/HELGA_ASSET_REPLACEMENT_DECISION.md
- Current decision: projects/test_project_h/panels/001/decisions/HELGA_CURRENT_ASSET_DECISION.md
