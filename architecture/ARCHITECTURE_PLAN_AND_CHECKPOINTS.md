# Architecture Build Plan & Checkpoints

**Repository:** dragon4projects/dragon-test-chest
**Purpose:** durable laboratory record for building and testing the GitHub-based project-memory architecture.
**Status:** active experiment; not production architecture.

## Working principle

Do not design the final system in advance.

Each architectural rule must be earned by a real test:
1. run a concrete scenario;
2. observe what the current structure can and cannot express;
3. make the smallest persistent change needed;
4. record the result;
5. only then decide whether a new abstraction is justified.

Chat is working memory. GitHub is durable memory. Handoffs transfer context. Tests verify that durable memory is sufficient for a new sister to continue.

## Test sequence

### TEST 1 — Repository-first continuity
**Checkpoint:** PASS / WITH GAPS

Verified:
- handoffs can transfer project context;
- authority does not automatically transfer with a handoff;
- historical/current boundaries can be expressed;
- technical research can be separated from project-specific conclusions.

Observed gaps:
- some handoffs referenced material outside the repository;
- no persistent production chain;
- no explicit character/asset/project state layers.

### TEST 2 — Minimal production chain
**Scenario:** WITCH → Panel 017 → Helga → crouching pose.

**Task:** WITCH-P017-HELGA-CROUCH-001

Checkpoint:
- request exists;
- character state exists;
- panel state exists;
- candidate assets have durable records;
- decision exists;
- focused handoff exists;
- one task ID can connect the chain.

Key rule earned:
**Panel decision is not character canon.**

### TEST 3 — Full production chain
**Checkpoint:** PASS

Verified chain:

request → task → character → candidate asset → decision → project/panel state → handoff

Verified status distinction:

GENERATED ≠ ACCEPTED_FOR_PROJECT ≠ CANONICAL_FOR_CHARACTER ≠ REUSABLE

Not yet proven at this checkpoint:
- physical binary asset storage;
- multiple projects consuming one character asset;
- asset lifecycle after reuse.

### TEST 4 — Cross-project reuse
**Scenario:** TEST_PROJECT_B / Panel 003 reuses HELGA-CROUCH-CANDIDATE-03.

**Task:** TESTB-P003-HELGA-REUSE-001

Checkpoint: PASS

Verified:
- origin remains attached to the asset;
- consumption is recorded by the consuming project/panel;
- no duplicate asset record is required;
- origin and consumption do not rewrite one another;
- no global asset registry was required.

Open question carried forward:
- what happens when an asset remains valid for old consumers but is no longer recommended for new consumers?

### TEST 5 — Asset lifecycle / reuse revocation
**Scenario:** TEST_PROJECT_C / Panel 001 attempts to reuse HELGA-CROUCH-CANDIDATE-03 after reuse is no longer recommended.

**Task:** TESTC-P001-HELGA-OLD-ASSET-001

Checkpoint: PASS for tested scenario.

Observed solution:
- current asset record uses REUSABLE = NO;
- the meaning of NO is explicitly defined as “do not select this asset for a new production consuming task”;
- a separate lifecycle decision records the change;
- old consumers remain unchanged historical facts;
- TEST_PROJECT_C records a local rejection;
- character canon and provenance remain unchanged.

Important unresolved design question:
- ownership/governance of future reuse recommendations is now exposed as a real architectural concern, but this test does not justify a global governance system.

### TEST 6 — Asset lifecycle / reuse reversal
**Scenario:** HELGA-CROUCH-CANDIDATE-03 moves from REUSABLE = NO back to REUSABLE = YES, then TEST_PROJECT_D / Panel 001 attempts a new use.

**Task:** TESTD-P001-HELGA-REUSE-001

**Checkpoint: PASS for tested scenario**

Verified:
- the current asset record can be changed from REUSABLE = NO to REUSABLE = YES;
- the earlier NO lifecycle decision can remain unchanged as historical evidence;
- the reversal can be recorded as a separate focused lifecycle decision;
- WITCH / Panel 017 remains accepted;
- TEST_PROJECT_B / Panel 003 remains accepted;
- TEST_PROJECT_C / Panel 001 remains historically REJECTED_FOR_NEW_USE;
- TEST_PROJECT_D / Panel 001 can record a normal new request → panel state → decision using the same asset;
- no automatic propagation to old consumers is required;
- character canon and provenance remain unchanged.

Key rule earned:
**A reusable asset may move from YES → NO → YES without rewriting prior lifecycle decisions or historical consumer decisions, provided the current asset record carries the current recommendation and lifecycle changes are recorded as separate focused decisions.**

This does not yet prove a universal governance/authority model for who may reverse a lifecycle recommendation.

## Next checkpoints

### TEST 7 — Multiple independent consumers
Goal: determine whether repository search remains adequate when one asset has several consumers.

Do not add a consumer registry before the scenario demonstrates a discoverability failure.

### TEST 8 — Replacement / supersession
Goal: test a consumer replacing one accepted asset with another without rewriting provenance or character canon.

### TEST 9 — Physical binary asset
Goal: test storing the actual PNG in GitHub and connecting it unambiguously to the durable asset record.

### TEST 10 — New-sister reconstruction
A fresh sister receives only repository access and the test protocol. She must reconstruct:
- current architecture;
- historical test findings;
- current open questions;
- where to continue.

### TEST 11 — Architecture freeze candidate
Only after the previous tests, decide which semantics are stable enough to propose for production repositories.

## Rules for every future test

- Test the smallest real scenario.
- Prefer existing fields and documents.
- Do not introduce a global database, graph, event sourcing, registry, automation, or API unless a test demonstrates the need.
- Preserve historical facts.
- Never let a handoff silently transfer authority.
- Distinguish observation, inference, hypothesis, and accepted architecture.
- Record unresolved questions rather than solving them speculatively.
