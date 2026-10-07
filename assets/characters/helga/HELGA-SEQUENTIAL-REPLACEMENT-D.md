# Asset Record — HELGA-SEQUENTIAL-REPLACEMENT-D

**Asset ID:** HELGA-SEQUENTIAL-REPLACEMENT-D
**Character:** Helga
**Originating task:** TESTI-P001-MANY-REPLACEMENTS-001
**Originating project:** TEST_PROJECT_I
**Originating panel:** 001
**Status:** GENERATED / ACCEPTED_FOR_PROJECT
**Scope:** Consumer-specific sequential replacement test asset
**Reusable:** YES
**Canonical for Helga:** NO
**Provenance:** Created for TEST_PROJECT_I / Panel 001 during TEST #13. This provenance is not rewritten by later replacements.

## Consumer history
This asset is one point in the consumer-local replacement sequence:
A → B → C → D → E

This asset replaced C for the consumer.

The replacement relation is recorded by the corresponding panel decision, not by a global supersession state.

## Lifecycle boundary
REUSABLE remains YES for this test. A consumer-specific replacement does not automatically make this asset non-reusable, invalid, deleted, or globally superseded.

## Related records
- Character: characters/helga/CHARACTER_STATE.md
- Test request: correspondence/requests/test_project_i/TESTI-P001-MANY-REPLACEMENTS-001.md
- Panel state: projects/test_project_i/panels/001/PANEL_STATE.md
- Decisions: projects/test_project_i/panels/001/decisions/
- The previous/next asset relationship is explicitly recorded in the corresponding replacement decision.

The actual image is intentionally not stored; this test targets durable architectural records and replacement chronology.
