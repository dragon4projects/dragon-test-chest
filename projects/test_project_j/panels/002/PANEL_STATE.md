# TEST_PROJECT_J — Panel 002 State

**Project:** TEST_PROJECT_J
**Panel:** 002
**Task:** TESTJ-MULTIPLE-CONSUMERS-SEQUENTIAL-REPLACEMENTS-001
**Status:** READY

## Consumer-specific history
Sequence:
A → D

Historical states:
- A, then D

## Current state
**Current asset:** HELGA-MULTI-CONSUMER-D

The current state is consumer-specific to TEST_PROJECT_J / Panel 002.

## Historical boundary
No historical decision is rewritten by later replacements in another consumer.

## Provenance boundary
Asset provenance remains on the individual asset records. Consumer state selects an asset; it does not rewrite asset origin.

## Lifecycle boundary
The test does not automatically change REUSABLE for any asset and does not create REPLACED, SUPERSEDED, INVALID, or DELETED lifecycle states.

## Related records
- Request: correspondence/requests/test_project_j/TESTJ-MULTIPLE-CONSUMERS-SEQUENTIAL-REPLACEMENTS-001.md
- Assets: assets/characters/helga/
- Decisions: projects/test_project_j/panels/002/decisions/
