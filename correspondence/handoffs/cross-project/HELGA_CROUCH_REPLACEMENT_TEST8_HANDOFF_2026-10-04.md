# Test #8 Handoff — HELGA crouch asset replacement

**Test:** TEST 8 — ASSET LIFECYCLE — REPLACEMENT / SUPERSESSION
**Date:** 2026-10-04
**Repository:** dragon4projects/dragon-test-chest

## Scenario

TEST_PROJECT_H / Panel 001 first accepted HELGA-CROUCH-CANDIDATE-03.

A later consumer-specific review found that an improved variant was preferable for this panel. A new asset, HELGA-CROUCH-CANDIDATE-04, was created and accepted as the current asset.

The old decision was not edited.

## Current chain

TEST_PROJECT_H / Panel 001
→ initial decision
→ HELGA-CROUCH-CANDIDATE-03
→ replacement decision
→ HELGA-CROUCH-CANDIDATE-04
→ current decision

## Historical boundary

HELGA-CROUCH-CANDIDATE-03 remains an actual historical consumer asset for TEST_PROJECT_H / Panel 001.

Its original WITCH origin remains unchanged.

HELGA-CROUCH-CANDIDATE-04 has its own asset identity and origin in TEST_PROJECT_H / Panel 001.

Neither asset becomes canonical for Helga automatically.

## Lifecycle boundary

The replacement was consumer-specific. It did not change HELGA-CROUCH-CANDIDATE-03's current REUSABLE state and did not mark that asset globally REPLACED.

This test therefore separates consumer replacement from asset lifecycle reuse state.

## Discoverability

The replacement relation is explicitly recorded in:
- TEST_PROJECT_H replacement decision;
- HELGA-CROUCH-CANDIDATE-03 Related records;
- HELGA-CROUCH-CANDIDATE-04 Related records;
- TEST_PROJECT_H panel state;
- initial and current consumer decisions.

The current consumer is discoverable from Panel 001 and the current decision. The historical consumer is discoverable from the initial decision and replacement decision.

The available GitHub search interface had previously returned zero results even for broad terms during Test #7, so exhaustive search adequacy remains unproven. Test #8 therefore relies on explicit record links for durable navigation.

## Open questions

- Whether a future consumer-specific replacement should ever cause a global asset lifecycle state such as REPLACED/SUPERSEDED remains untested.
- Whether many sequential replacements become difficult to navigate remains untested.
- Whether a replacement relation needs a dedicated reusable record type remains unproven; this test used an existing decision-style record.

## Next minimal test

Test #9 — physical binary asset.
