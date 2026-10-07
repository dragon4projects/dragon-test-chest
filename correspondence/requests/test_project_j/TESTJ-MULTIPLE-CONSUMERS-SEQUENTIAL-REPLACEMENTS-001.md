# Test Request: TESTJ-MULTIPLE-CONSUMERS-SEQUENTIAL-REPLACEMENTS-001

**Task ID:** TESTJ-MULTIPLE-CONSUMERS-SEQUENTIAL-REPLACEMENTS-001
**Status:** ACCEPTED
**Requester:** TEST_PROJECT_J architecture laboratory
**Purpose:** Test whether one shared origin Asset A can be consumed by multiple independent consumers while each consumer performs its own sequential replacement chain without global propagation or supersession.

## Scenario

Shared origin asset: HELGA-MULTI-CONSUMER-ORIGIN-A

Consumer branches:
- TEST_PROJECT_J / Panel 001: A → B → C
- TEST_PROJECT_J / Panel 002: A → D
- TEST_PROJECT_J / Panel 003: A → E → F

Additional reuse probe:
- TEST_PROJECT_J / Panel 004 uses A after the three replacement branches have completed.

All replacement decisions are consumer-specific. No global supersession is declared.

## Replacement reasons

- Panel 001 A → B: composition improvement for Panel 001.
- Panel 001 B → C: final framing/readability improvement for Panel 001.
- Panel 002 A → D: panel-specific pose/readability improvement.
- Panel 003 A → E: panel-specific composition improvement.
- Panel 003 E → F: final fit improvement for Panel 003.

## Historical boundary

Each decision remains a historical fact. No earlier decision is rewritten because another consumer changes its current asset.

## Current boundary

After the branch replacements:
- Panel 001 currently uses C.
- Panel 002 currently uses D.
- Panel 003 currently uses F.
- Panel 004 uses A as an independent consuming use.

## Architecture boundary

This test intentionally does not introduce:
- consumer registry;
- replacement registry;
- supersession registry;
- lineage/version mechanism;
- global current asset;
- automatic propagation;
- new lifecycle status.

## Related records

See the panel states, decisions and asset records under:
- projects/test_project_j/panels/001/
- projects/test_project_j/panels/002/
- projects/test_project_j/panels/003/
- projects/test_project_j/panels/004/
- assets/characters/helga/
