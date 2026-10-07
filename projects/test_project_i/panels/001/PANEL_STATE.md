# TEST_PROJECT_I — Panel 001 State

**Project:** TEST_PROJECT_I
**Panel:** 001
**Task:** TESTI-P001-MANY-REPLACEMENTS-001
**Status:** READY WITH SEQUENTIAL REPLACEMENTS

## Replacement history
A = HELGA-SEQUENTIAL-REPLACEMENT-A
B = HELGA-SEQUENTIAL-REPLACEMENT-B
C = HELGA-SEQUENTIAL-REPLACEMENT-C
D = HELGA-SEQUENTIAL-REPLACEMENT-D
E = HELGA-SEQUENTIAL-REPLACEMENT-E

Sequence:
A → B → C → D → E

## Historical states
- Initial accepted asset: A
- After replacement 1: B
- After replacement 2: C
- After replacement 3: D
- After replacement 4: E

No historical decision is rewritten.

## Current state
**Current asset:** HELGA-SEQUENTIAL-REPLACEMENT-E

The current state is consumer-specific to TEST_PROJECT_I / Panel 001.

## Character boundary
None of A–E becomes canonical for Helga automatically because of this panel test.

## Provenance boundary
Each asset retains its own origin record. Replacement changes the consumer's selected asset; it does not rewrite the origin of the old asset.

## Lifecycle boundary
The sequential replacements do not automatically change REUSABLE for any asset and do not create REPLACED, SUPERSEDED, INVALID, or DELETED lifecycle states.

## Related records
- Request: correspondence/requests/test_project_i/TESTI-P001-MANY-REPLACEMENTS-001.md
- Assets: assets/characters/helga/HELGA-SEQUENTIAL-REPLACEMENT-{A,B,C,D,E}.md
- Decisions: projects/test_project_i/panels/001/decisions/
