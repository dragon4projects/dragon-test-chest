# ARCHITECTURE HANDOFF TO NEXT ARCHITECT

Status: LIVING HANDOFF — update after every architecture test, test-derived conclusion, or new material decision.
Repository: dragon4projects/dragon-test-chest
Purpose: allow the next architecture sister to continue the experiment from GitHub without relying on chat memory.

## 1. Mission

This repository is an architecture laboratory, not a production repository.

The task is to discover the smallest durable project-memory architecture that lets rotating sisters reconstruct and continue real work.

Do NOT design a beautiful final system in advance. Each architectural rule must be earned by a real test or explicitly marked as a hypothesis.

Working model:
- Chat = working memory.
- GitHub = durable memory.
- Handoff = transfer mechanism.
- Tests = verification.

## 2. Current architectural chain

The currently proven working chain is:

REQUEST → TASK → CHARACTER → CANDIDATE ASSET → DECISION → PROJECT/PANEL STATE → HANDOFF

A stable task ID should connect the relevant records.

Reverse navigation is also required: a new sister must be able to start from an asset, decision, panel, character, or handoff and reach the surrounding context.

## 3. Important ownership boundaries

- Asset is not character state.
- Panel decision is not character canon.
- Accepted asset is not automatically canonical character master.
- Origin is not consumption.
- Handoff transfers context/provenance/decisions/open state; authority does not travel automatically with the message.
- Historical facts must not be rewritten merely because current state changes.
- Project-specific decisions must not silently become global character canon.
- A lifecycle change must not silently rewrite old consumers.
- A consumer-specific replacement does not automatically become a global asset lifecycle state.

## 4. Asset state semantics currently proven

These statements are distinct:

GENERATED
ACCEPTED_FOR_PROJECT
CANONICAL_FOR_CHARACTER
REUSABLE

The tested lifecycle sequence includes:

PAST: REUSABLE=YES
THEN: REUSABLE=NO
CURRENT: REUSABLE=YES

For Test #5, REUSABLE=NO meant: “Do not select this asset for a new production consuming task.”

For Test #6, REUSABLE=YES means: “The asset may be considered for a new production consuming task.”

REUSABLE does NOT by itself mean deleted, invalid, canonical, historical consumers were wrong, old decisions reopened, or originating authority changed.

## 5. Tests 1–4

Test 1 established repository-first continuity and the authority boundary of handoffs.

Test 2 established the minimal persistent production chain and earned the rule: panel decision is not character canon.

Test 3 established the full request → task → character → candidate asset → decision → project/panel state → handoff chain and the distinction GENERATED ≠ ACCEPTED_FOR_PROJECT ≠ CANONICAL_FOR_CHARACTER ≠ REUSABLE.

Test 4 established cross-project reuse: one asset can be consumed by another project without duplicating the asset record; ORIGIN ≠ CONSUMPTION.

No global asset or consumer registry was required.

## 6. Test #5 — ASSET LIFECYCLE / REUSE REVOCATION — PASS

HELGA-CROUCH-CANDIDATE-03 moved from reusable to not recommended for new production reuse.

Observed:
- current asset record changed to REUSABLE=NO;
- separate lifecycle decision recorded the change;
- TEST_PROJECT_C recorded a local REJECTED_FOR_NEW_USE decision;
- old WITCH and TEST_PROJECT_B consumers remained unchanged;
- origin and Helga canon remained unchanged.

No global registry, graph, event sourcing, API, synchronization, or automatic propagation was needed.

Open question: governance/ownership of later cross-project lifecycle recommendations.

## 7. Test #6 — ASSET LIFECYCLE / REUSE REVERSAL — PASS

HELGA-CROUCH-CANDIDATE-03 moved REUSABLE=NO → REUSABLE=YES.

Observed:
- previous NO lifecycle decision was not rewritten;
- separate reversal decision recorded the new state;
- TEST_PROJECT_C remained historically REJECTED_FOR_NEW_USE;
- TEST_PROJECT_D became a new accepted consumer;
- prior consumers, provenance, and character canon remained unchanged.

Proven rule:
A reusable asset may move YES → NO → YES without rewriting prior lifecycle decisions or historical consumers, provided the asset record carries the current recommendation and lifecycle changes are durably recorded.

Still open: lifecycle governance and discoverability at much larger scale.

## 8. Test #7 — MULTIPLE INDEPENDENT CONSUMERS — PARTIAL

Three additional consumers were added for HELGA-CROUCH-CANDIDATE-03:
- TEST_PROJECT_E / Panel 002
- TEST_PROJECT_F / Panel 011
- TEST_PROJECT_G / Panel 004

The tested set is seven known consumer scenarios: WITCH, TEST_PROJECT_B, TEST_PROJECT_C, TEST_PROJECT_D, TEST_PROJECT_E, TEST_PROJECT_F, TEST_PROJECT_G.

Observed:
- each consumer has request → panel state → decision → existing asset;
- no duplicate asset record was required;
- asset Related records plus explicit consumer links reconstructed the known scenarios;
- the available GitHub connector search returned zero results for the tested asset and broad terms, so exhaustive search adequacy was not proven.

This search observation is not proof of a repository data-model failure.

No consumer registry, global index, graph, API, synchronization, or richer lifecycle vocabulary was justified.

Focused handoff:
correspondence/handoffs/cross-project/HELGA_CROUCH_MULTIPLE_CONSUMERS_TEST7_HANDOFF_2026-10-03.md

## 9. Test #8 — REPLACEMENT / SUPERSESSION — PASS FOR TESTED SCENARIO

### Scenario

TEST_PROJECT_H / Panel 001 initially accepted HELGA-CROUCH-CANDIDATE-03.

A later consumer-specific review found that an improved variant was preferable for this panel. A new asset record, HELGA-CROUCH-CANDIDATE-04, was created and accepted as the current asset.

The initial decision was not edited.

### Observed facts

The repository now expresses:

H / Panel 001
→ initial decision
→ HELGA-CROUCH-CANDIDATE-03
→ replacement decision
→ HELGA-CROUCH-CANDIDATE-04
→ current decision

The original asset remains historically accepted by H. Its WITCH origin remains unchanged.

The new asset is a distinct asset record with its own origin: TEST_PROJECT_H / Panel 001. It is not automatically canonical for Helga.

The replacement is consumer-specific. HELGA-CROUCH-CANDIDATE-03 was not globally marked REPLACED and its current REUSABLE state was not changed by this replacement.

### History preservation

The old decision remains:
TEST_PROJECT_H / Panel 001 = ACCEPTED_FOR_USE with HELGA-CROUCH-CANDIDATE-03.

The current decision is separate:
TEST_PROJECT_H / Panel 001 = ACCEPTED_FOR_USE with HELGA-CROUCH-CANDIDATE-04.

The replacement decision separately records why the consumer moved from A to B.

No historical decision was rewritten.

### Discoverability

The tested relation H → A → replacement → B is recoverable through explicit links among:
- H panel state;
- initial decision;
- replacement decision;
- current decision;
- Asset A Related records;
- Asset B Related records.

The available search interface remains unreliable as an exhaustive search mechanism because of the Test #7 zero-result observation. This did not prevent explicit record navigation in Test #8.

### Provenance

Asset A:
- Origin: WITCH / Panel 017 / WITCH-P017-HELGA-CROUCH-001.

Asset B:
- Origin: TEST_PROJECT_H / Panel 001 / TESTH-P001-HELGA-REPLACEMENT-001.

Replacement does not alter either origin.

### Lifecycle separation

The consumer replacement is separate from Asset A's REUSABLE lifecycle.

The test did not introduce REPLACED, SUPERSEDED, RETIRED, VALID_FROM, VALID_TO, or any other global lifecycle vocabulary.

### Inference

For the tested one-consumer replacement scenario, an existing request/panel/decision record pattern plus one focused replacement decision is sufficient to preserve current consumption, historical consumption, replacement reason, and provenance.

A global supersession entity is not justified by this test.

### Hypotheses / still open

- Many sequential replacements may make chronology harder to read.
- A future scenario may require distinguishing consumer-specific replacement from a global asset-level retirement/supersession.
- It remains unproven whether a dedicated reusable replacement record type would become useful at scale.
- Exhaustive repository-search adequacy remains unproven.

### What was not needed

- global asset registry;
- consumer registry;
- replacement registry;
- graph database;
- event sourcing;
- API;
- automatic index;
- automatic propagation;
- automatic canonical promotion;
- global REPLACED/SUPERSEDED lifecycle state.

### Test #8 artifacts

- assets/characters/helga/HELGA-CROUCH-CANDIDATE-03.md
- assets/characters/helga/HELGA-CROUCH-CANDIDATE-04.md
- correspondence/requests/test_project_h/TESTH-P001-HELGA-REPLACEMENT-001.md
- projects/test_project_h/panels/001/PANEL_STATE.md
- projects/test_project_h/panels/001/decisions/HELGA_INITIAL_ASSET_DECISION.md
- projects/test_project_h/panels/001/decisions/HELGA_ASSET_REPLACEMENT_DECISION.md
- projects/test_project_h/panels/001/decisions/HELGA_CURRENT_ASSET_DECISION.md
- correspondence/handoffs/cross-project/HELGA_CROUCH_REPLACEMENT_TEST8_HANDOFF_2026-10-04.md

## 10. Current open questions

- lifecycle governance / authority;
- discoverability at much larger consumer counts;
- chronology of many lifecycle changes;
- many sequential replacements / supersessions;
- physical binary assets;
- reconstruction by a new sister from repository alone;
- whether any global supersession concept is ever justified.

## 11. Planned tests

- Test 9: physical binary asset
- Test 10: reconstruction by a new sister
- Test 11: architecture freeze candidate

These are plans, not yet proven rules.

## 12. Test discipline

For every new test:
1. Start with the smallest real scenario.
2. Inspect what the current model already expresses.
3. Prefer existing files/fields and minimal additions.
4. Do not introduce global databases, registries, graphs, event sourcing, automation, APIs, or synchronization unless the test demonstrates a concrete need.
5. Preserve historical facts.
6. Do not infer authority from a handoff.
7. Separate OBSERVED FACT, INFERENCE, HYPOTHESIS, and ACCEPTED ARCHITECTURE.
8. Record unresolved questions instead of solving them speculatively.
9. Update this handoff, the architecture plan/checkpoints file, the changes-after-tests file, and the handoff index after the test.

## 13. Source discipline

Do not claim a file was inspected if it was not inspected. Do not claim an image was visually checked if it was not. Do not call a hypothesis proven. Do not claim a historical decision changed unless the record was changed.

## 14. Current status at handoff

Tests completed:
- Test 1 — repository-first continuity
- Test 2 — live micro-scenario
- Test 3 — actual production chain
- Test 4 — cross-project reuse
- Test 5 — asset lifecycle / reuse revocation
- Test 6 — asset lifecycle / reuse reversal
- Test 7 — multiple independent consumers
- Test 8 — replacement / supersession

Current conclusion:
The tested architecture can express a consumer-specific replacement from Asset A to Asset B while preserving the old consumer decision, both origins, current consumption, replacement reason, and character-canon boundary without adding a supersession registry or global lifecycle state.

Immediate next action:
Run TEST 9 — PHYSICAL BINARY ASSET.
