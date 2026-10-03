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

Current proven lifecycle example:

PAST: REUSABLE=YES
CURRENT: REUSABLE=NO

For the tested meaning, REUSABLE=NO means:
"Do not select this asset for a new production consuming task."

It does NOT mean:
- deleted
- invalid
- historically rejected
- old consumers are invalid
- canonical
- forbidden forever
- originating project decision revoked

Historical reusable state may remain recorded alongside the current state.

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
Who owns a later cross-project lifecycle recommendation is not yet universally defined. Test #5 records this as an unresolved governance question, not as a final rule.

## 6. Next test

NEXT MINIMAL EXPERIMENT: REUSE REVERSAL.

Scenario:
PAST REUSABLE=YES
CURRENT REUSABLE=NO
FUTURE asset becomes eligible for reuse again.

Question:
Can the existing asset record + separate focused lifecycle decision express the reversal without rewriting the previous lifecycle decision or historical consumers?

Constraint:
Do not add richer lifecycle vocabulary unless the real test breaks the current model.

## 7. Planned tests

- Test 6: multiple independent consumers
- Test 7: replacement / supersession
- Test 8: physical binary asset
- Test 9: reconstruction by a new sister
- Test 10: architecture freeze candidate

These are plans, not yet proven rules.

## 8. Test discipline

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

## 9. Durable memory rule

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

## 10. Source discipline

Do not claim:
- that a file was inspected if it was not inspected;
- that an image was visually checked if it was not;
- that a rule is proven if it is only a hypothesis;
- that a historical decision changed if the record was not changed.

When uncertain, label the uncertainty.

## 11. Current repository role

This repository is the durable memory of the architecture experiment.
Production repositories are not the place for architecture experiments.

The next sister should read this file first, then:
1. ARCHITECTURE_PLAN_AND_CHECKPOINTS.md
2. ARCHITECTURE_CHANGES_AFTER_TESTS.md
3. relevant test artifacts and handoffs
4. only then begin the next test

## 12. Current status at handoff

Tests completed:
- Test 1 — repository-first continuity
- Test 2 — live micro-scenario
- Test 3 — actual production chain
- Test 4 — cross-project reuse
- Test 5 — asset lifecycle / reuse revocation

Current conclusion:
The architecture is still intentionally small and test-driven. The existing model has survived cross-project reuse and stopping new reuse without requiring a global asset system.

Immediate next action:
Run REUSE REVERSAL and update this handoff immediately afterward.
