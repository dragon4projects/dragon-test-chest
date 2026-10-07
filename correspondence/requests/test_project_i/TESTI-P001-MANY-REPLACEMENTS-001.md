# Test Request: TESTI-P001-MANY-REPLACEMENTS-001

**Task ID:** TESTI-P001-MANY-REPLACEMENTS-001
**Status:** ACCEPTED
**Requester:** TEST_PROJECT_I / Panel 001
**Purpose:** Test whether one consumer-context can undergo many sequential asset replacements A → B → C → D → E while preserving durable history, provenance, current state, consumer-specific scope, and existing lifecycle semantics.

## Scenario
TEST_PROJECT_I / Panel 001 begins with HELGA-SEQUENTIAL-REPLACEMENT-A.
The same consumer-context then performs four sequential consumer-specific replacements: A → B → C → D → E.
Each replacement is recorded as a separate decision. No global supersession is declared.

## Replacement reasons
- A → B: composition improvement requested for this panel.
- B → C: framing improvement requested for this panel.
- C → D: pose/readability improvement requested for this panel.
- D → E: final fit improvement requested for this panel.

Each reason is local to TEST_PROJECT_I / Panel 001.

## Historical boundary
Every earlier decision remains a historical fact. No earlier decision is edited or converted into a global asset lifecycle state.

## Current boundary
After the fourth replacement, TEST_PROJECT_I / Panel 001 currently uses HELGA-SEQUENTIAL-REPLACEMENT-E.

## Related records
- Panel state: projects/test_project_i/panels/001/PANEL_STATE.md
- Asset A: assets/characters/helga/HELGA-SEQUENTIAL-REPLACEMENT-A.md
- Asset B: assets/characters/helga/HELGA-SEQUENTIAL-REPLACEMENT-B.md
- Asset C: assets/characters/helga/HELGA-SEQUENTIAL-REPLACEMENT-C.md
- Asset D: assets/characters/helga/HELGA-SEQUENTIAL-REPLACEMENT-D.md
- Asset E: assets/characters/helga/HELGA-SEQUENTIAL-REPLACEMENT-E.md
- Initial decision: projects/test_project_i/panels/001/decisions/HELGA_INITIAL_ASSET_DECISION.md
- Replacement A→B: projects/test_project_i/panels/001/decisions/HELGA_ASSET_REPLACEMENT_A_TO_B_DECISION.md
- Replacement B→C: projects/test_project_i/panels/001/decisions/HELGA_ASSET_REPLACEMENT_B_TO_C_DECISION.md
- Replacement C→D: projects/test_project_i/panels/001/decisions/HELGA_ASSET_REPLACEMENT_C_TO_D_DECISION.md
- Replacement D→E: projects/test_project_i/panels/001/decisions/HELGA_ASSET_REPLACEMENT_D_TO_E_DECISION.md
- Current decision: projects/test_project_i/panels/001/decisions/HELGA_CURRENT_ASSET_DECISION.md
