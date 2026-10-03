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
