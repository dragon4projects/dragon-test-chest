# ARCHITECTURE HANDOFF TO NEXT ARCHITECT

Status: LIVING HANDOFF — update after every architecture test, test-derived conclusion, or new material decision.
Repository: dragon4projects/dragon-test-chest
Purpose: allow the next architecture sister to continue the experiment from GitHub without relying on chat memory.

## 1. Mission

This repository is an architecture laboratory, not a production repository.

The task is to discover the smallest durable project-memory architecture that lets rotating sisters reconstruct and continue real work.

Do NOT design a beautiful final system in advance.
Each architectural rule must be earned by a real test or explicitly marked as a hypothesis.

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

## 4. Asset state semantics currently proven

These statements are distinct:

GENERATED
ACCEPTED_FOR_PROJECT
CANONICAL_FOR_CHARACTER
REUSABLE

They must not be collapsed into one status.

The tested lifecycle sequence now includes:

PAST: REUSABLE=YES
THEN: REUSABLE=NO
CURRENT: REUSABLE=YES

For Test #5, REUSABLE=NO meant:
"Do not select this asset for a new production consuming task."

For Test #6, REUSABLE=YES means:
"The asset may be considered for a new production consuming task."

REUSABLE is a current reuse recommendation. It does NOT by itself mean:
- deleted
- invalid
- canonical
- historical consumers were wrong
- old consumer decisions are automatically reopened
- originating project authority changed

Historical reusable states may coexist with the current state through the asset record plus focused lifecycle decisions.

## 5. What Test #5 proved

Test #5 = ASSET LIFECYCLE — REUSE REVOCATION.

Scenario:
Helga crouching asset candidate-03 was accepted in WITCH Panel 017 and reused by TEST_PROJECT_B Panel 003. Later, reuse was stopped for new production.

Minimal changes were sufficient:
1. asset record changed REUSABLE YES → NO and explicitly defined the current meaning;
2. an asset-specific lifecycle decision recorded the decision and its non-revocations;
3. TEST_PROJECT_C recorded a new attempt and rejected the old asset locally;
4. a focused lifecycle handoff transferred the change;
5. handoff index was updated.

Old WITCH and TEST_PROJECT_B consumers remained valid.
Origin and provenance remained unchanged.
Helga canon remained unchanged.
No global asset registry, graph, event sourcing, API, synchronization, or automatic propagation was needed.

Important open question:
Who owns a later cross-project lifecycle recommendation is not yet universally defined.

## 6. What Test #6 proved

Test #6 = ASSET LIFECYCLE — REUSE REVERSAL.

Scenario:
HELGA-CROUCH-CANDIDATE-03 moved from REUSABLE=NO back to REUSABLE=YES. TEST_PROJECT_D / Panel 001 then made a new consuming request.

### Observed facts

- The asset record was changed to current REUSABLE=YES.
- The earlier lifecycle decision for REUSABLE=NO was not rewritten.
- A separate reversal lifecycle decision was created.
- WITCH / Panel 017 remained accepted.
- TEST_PROJECT_B / Panel 003 remained accepted.
- TEST_PROJECT_C / Panel 001 remained historically REJECTED_FOR_NEW_USE.
- TEST_PROJECT_D / Panel 001 recorded a new accepted use.
- Provenance and Helga character canon remained unchanged.
- The normal request → panel state → decision chain was sufficient for the new consumer.

### Inference

The existing boolean REUSABLE plus separate focused lifecycle decisions is sufficient for the tested YES → NO → YES reversal.

A lifecycle reversal does not require retroactive mutation of historical consumer decisions.

### Hypotheses / open questions

- Many lifecycle changes may eventually create a chronology/discoverability problem. This test did not demonstrate one.
- The architecture still does not prove a universal governance model for who is authorized to reverse a lifecycle recommendation.

### Accepted architecture after Test #6

A reusable asset may move:

REUSABLE=YES
→ REUSABLE=NO
→ REUSABLE=YES

without rewriting previous lifecycle decisions or historical consumers, provided the asset record exposes the current recommendation and each lifecycle change is recorded durably.

No richer lifecycle vocabulary was required.

## 7. Relevant Test #6 artifacts

Asset:
- assets/characters/helga/HELGA-CROUCH-CANDIDATE-03.md

Earlier lifecycle decision:
- assets/characters/helga/HELGA-CROUCH-CANDIDATE-03_LIFECYCLE_DECISION.md

Reversal lifecycle decision:
- assets/characters/helga/HELGA-CROUCH-CANDIDATE-03_LIFECYCLE_REVERSAL_DECISION.md

Historical consumer:
- projects/test_project_c/panels/001/decisions/HELGA_OLD_ASSET_DECISION.md

New consumer:
- correspondence/requests/test_project_d/TESTD-P001-HELGA-REUSE-001.md
- projects/test_project_d/panels/001/PANEL_STATE.md
- projects/test_project_d/panels/001/decisions/HELGA_REUSE_ASSET_DECISION.md

Focused lifecycle handoff:
- correspondence/handoffs/cross-project/HELGA_CROUCH_REUSE_REVERSAL_HANDOFF_2026-10-03.md

## 8. Next test

NEXT MINIMAL EXPERIMENT: TEST 7 — MULTIPLE INDEPENDENT CONSUMERS.

Question:
Does repository search remain adequate when one asset has several independent consumers, including consumers from different lifecycle moments?

Do not add a consumer registry or global index before the scenario demonstrates a concrete discoverability failure.

## 9. Planned tests

- Test 7: multiple independent consumers
- Test 8: replacement / supersession
- Test 9: physical binary asset
- Test 10: reconstruction by a new sister
- Test 11: architecture freeze candidate

These are plans, not yet proven rules.

## 10. Test discipline

For every new test:
1. Start with the smallest real scenario.
2. Inspect what the current model already expresses.
3. Prefer existing files/fields and minimal additions.
4. Do not introduce global databases, registries, graphs, event sourcing, automation, APIs, or synchronization unless the test demonstrates a concrete need.
5. Preserve historical facts.
6. Do not infer authority from a handoff.
7. Separate OBSERVED FACT, INFERENCE, HYPOTHESIS, and ACCEPTED ARCHITECTURE.
8. Record unresolved questions instead of solving them speculatively.
9. After the test, update this handoff, the architecture plan/checkpoints file, and the changes-after-tests file.

## 11. Durable memory rule

This file is itself a living architectural memory object.

After EVERY:
- architecture test,
- conclusion derived from a test,
- new architectural decision,
- important new data supplied by the user,
- important new architectural observation made during analysis,

update this file.

Do not wait for a new test if the new information materially changes what the next sister needs to know.

The handoff must describe CURRENT knowledge, while preserving historical test results and unresolved questions.

## 12. Source discipline

Do not claim:
- that a file was inspected if it was not inspected;
- that an image was visually checked if it was not;
- that a rule is proven if it is only a hypothesis;
- that a historical decision changed if the record was not changed.

When uncertain, label the uncertainty.

## 13. Current repository role

This repository is the durable memory of the architecture experiment.
Production repositories are not the place for architecture experiments.

The next sister should read this file first, then:
1. ARCHITECTURE_PLAN_AND_CHECKPOINTS.md
2. ARCHITECTURE_CHANGES_AFTER_TESTS.md
3. relevant test artifacts and handoffs
4. only then begin the next test

## 14. Current status at handoff

Tests completed:
- Test 1 — repository-first continuity
- Test 2 — live micro-scenario
- Test 3 — actual production chain
- Test 4 — cross-project reuse
- Test 5 — asset lifecycle / reuse revocation
- Test 6 — asset lifecycle / reuse reversal

Current conclusion:
The architecture has survived both stopping and restoring new reuse of the same asset without rewriting historical lifecycle decisions or historical consumers.

Immediate next action:
Run TEST 7 — MULTIPLE INDEPENDENT CONSUMERS and update this handoff immediately afterward.


## 13. Test #6 — REUSE REVERSAL — PASS (2026-10-03)

Test #6 confirmed that the current model handles the lifecycle sequence:

REUSABLE=YES → REUSABLE=NO → REUSABLE=YES

without a new architectural entity.

Observed:
- the asset record now shows the current state REUSABLE=YES;
- the previous lifecycle decision remains unchanged;
- a separate reversal lifecycle decision records the new event;
- TEST_PROJECT_C remains historically REJECTED_FOR_NEW_USE;
- TEST_PROJECT_D successfully consumes the asset after restoration;
- WITCH / Panel 017 and TEST_PROJECT_B / Panel 003 remain unchanged;
- provenance and Helga character canon remain unchanged.

Newly proven:
- lifecycle changes can be represented as separate decisions while the asset record carries current state;
- historical consumer decisions remain historically true after a later reversal;
- a restored reusable asset can enter a new consumer chain without a new architecture entity.

No richer lifecycle vocabulary, registry, automatic propagation, or governance system was needed.

Still open:
- authority/governance for lifecycle reversal;
- readability/discoverability with many lifecycle changes;
- discoverability with many consumers;
- supersession;
- physical binary assets;
- reconstruction by a new sister from repository alone.

## 14. Next test — Test #7

NEXT MINIMAL EXPERIMENT: MULTIPLE INDEPENDENT CONSUMERS.

Question:
Does ordinary repository search remain sufficient when one asset has many independent consumers?

Do not add a consumer registry in advance.
Let the real search scenario determine whether discoverability actually breaks.

The next sister should inspect the existing Test #6 artifacts and then run Test #7 from the smallest real scenario.

## 15. Living-handoff maintenance

The rule is reaffirmed: after every architecture test, test-derived conclusion, or materially important new architectural data from the user or assistant, update this file, even if the architecture itself does not change.

## 16. Test #7 — MULTIPLE INDEPENDENT CONSUMERS — PASS (2026-10-03)

Test #7 added three independent consumers of the existing asset HELGA-CROUCH-CANDIDATE-03 without creating duplicate asset records:

- TEST_PROJECT_E / Panel 002 — TESTE-P002-HELGA-REUSE-001
- TEST_PROJECT_F / Panel 011 — TESTF-P011-HELGA-REUSE-001
- TEST_PROJECT_G / Panel 004 — TESTG-P004-HELGA-REUSE-001

The complete tested consumer set is now:

1. WITCH / Panel 017 — accepted originating use
2. TEST_PROJECT_B / Panel 003 — accepted consuming use
3. TEST_PROJECT_C / Panel 001 — REJECTED_FOR_NEW_USE while REUSABLE=NO
4. TEST_PROJECT_D / Panel 001 — accepted consuming use after REUSABLE=YES
5. TEST_PROJECT_E / Panel 002 — accepted consuming use
6. TEST_PROJECT_F / Panel 011 — accepted consuming use
7. TEST_PROJECT_G / Panel 004 — accepted consuming use

### OBSERVED FACTS

Each new consumer has the normal local chain:

request → panel state → decision → existing asset

Each decision explicitly identifies HELGA-CROUCH-CANDIDATE-03 and points to the same asset record. No asset record was copied.

The asset record's Related records plus the individual consumer records were sufficient to reconstruct the seven known scenarios.

The GitHub connector search operation available during this test returned no matches even for broad repository terms (HELGA, Panel, REUSABLE, asset) and therefore could not serve as a reliable empirical full-repository search interface for this test. This is an observation about the search interface, not proof of a repository-model failure.

### SEARCH TESTS

Attempted repository search terms included:
- HELGA-CROUCH-CANDIDATE-03
- HELGA
- Panel
- REUSABLE
- asset
- TEST_PROJECT_B
- TEST_PROJECT_C
- TEST_PROJECT_D
- WITCH Panel 017

The search interface returned zero results in these attempts. The repository structure was therefore traversed through the asset record's explicit Related records and known consumer paths.

### DISCOVERABILITY

Easy:
- asset → origin;
- asset → lifecycle decisions;
- asset → known consumer records already listed in the asset record;
- consumer → decision → asset;
- consumer decision → origin.

Less easy:
- discovering a consumer without already knowing the asset record or consumer path;
- distinguishing a true consumer record from an incidental mention if relying only on broad text search;
- using the available connector search as an exhaustive repository index, because it returned no results during the test.

The test did not establish that repository data itself loses the consumer relationship.

### INFERENCE

For the tested seven-consumer structure, the durable records can represent independent consumers without a consumer registry or duplicate asset records.

The strongest current reverse-navigation mechanism is the asset record's explicit Related records combined with consumer-local links back to the asset.

### HYPOTHESES

If the number of consumers grows substantially, manually maintained Related records may become harder to keep complete.

A larger corpus may also make incidental mentions harder to distinguish from actual consumer decisions.

Neither issue is proven as an architectural failure by Test #7.

### ACCEPTED ARCHITECTURE AFTER TEST #7

For the tested scale and structure:

Repository records are sufficient to represent multiple independent consumers of one asset without a global consumer registry.

This is not a universal claim that a registry will never be useful.

### WHAT WE DID NOT NEED

- consumer registry;
- global asset registry;
- usage table;
- graph database;
- automatic index;
- API;
- synchronization;
- new asset records for each consumer;
- richer lifecycle vocabulary.

### WHAT REMAINS OPEN

- replacement / supersession;
- physical binary asset;
- reconstruction by a new sister from repository alone;
- whether manual Related-record maintenance remains reliable at much larger consumer counts;
- governance/authority for lifecycle recommendations.

### Test #7 focused handoff

correspondence/handoffs/cross-project/HELGA_CROUCH_MULTIPLE_CONSUMERS_TEST7_HANDOFF_2026-10-03.md

### Immediate next action

Run TEST 8 — REPLACEMENT / SUPERSESSION.
