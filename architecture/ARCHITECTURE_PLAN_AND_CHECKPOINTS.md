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

### TEST 2 — Minimal production chain
**Scenario:** WITCH → Panel 017 → Helga → crouching pose.

**Task:** WITCH-P017-HELGA-CROUCH-001

Key rule earned:
**Panel decision is not character canon.**

### TEST 3 — Full production chain
**Checkpoint:** PASS

Verified chain:
request → task → character → candidate asset → decision → project/panel state → handoff

Verified status distinction:
GENERATED ≠ ACCEPTED_FOR_PROJECT ≠ CANONICAL_FOR_CHARACTER ≠ REUSABLE

### TEST 4 — Cross-project reuse
**Scenario:** TEST_PROJECT_B / Panel 003 reuses HELGA-CROUCH-CANDIDATE-03.

**Task:** TESTB-P003-HELGA-REUSE-001

**Checkpoint:** PASS

Verified:
- origin remains attached to the asset;
- consumption is recorded by the consuming project/panel;
- no duplicate asset record is required;
- origin and consumption do not rewrite one another;
- no global asset registry was required.

### TEST 5 — Asset lifecycle / reuse revocation
**Scenario:** TEST_PROJECT_C / Panel 001 attempts to reuse HELGA-CROUCH-CANDIDATE-03 after reuse is no longer recommended.

**Task:** TESTC-P001-HELGA-OLD-ASSET-001

**Checkpoint:** PASS for tested scenario.

Verified:
- current asset record uses REUSABLE = NO;
- NO means “do not select this asset for a new production consuming task” for this test;
- a separate lifecycle decision records the change;
- old consumers remain unchanged historical facts;
- TEST_PROJECT_C records a local rejection;
- character canon and provenance remain unchanged.

### TEST 6 — Asset lifecycle / reuse reversal
**Scenario:** HELGA-CROUCH-CANDIDATE-03 moves REUSABLE = NO back to REUSABLE = YES, then TEST_PROJECT_D / Panel 001 makes a new use.

**Task:** TESTD-P001-HELGA-REUSE-001

**Checkpoint:** PASS for tested scenario

Key rule earned:
**A reusable asset may move YES → NO → YES without rewriting prior lifecycle decisions or historical consumer decisions, provided the current asset record carries the current recommendation and lifecycle changes are recorded as separate focused decisions.**

### TEST 7 — Multiple independent consumers

**Scenario:** HELGA-CROUCH-CANDIDATE-03 is consumed independently by TEST_PROJECT_E / Panel 002, TEST_PROJECT_F / Panel 011, and TEST_PROJECT_G / Panel 004.

**Checkpoint: PARTIAL**

Verified:
- seven known consumer scenarios can be represented without duplicate asset records;
- each consumer has its own request, panel state, and decision;
- each consumer decision explicitly identifies the same asset;
- historical TEST_PROJECT_C rejection remains distinct from current accepted consumers;
- origin remains WITCH / Panel 017;
- lifecycle decisions remain separate from consumption;
- the asset record's Related records plus consumer-local links allow reconstruction of the tested consumer set.

Discoverability observation:
- the available GitHub connector search returned no results for the tested asset and broad terms;
- explicit repository links still allowed reconstruction;
- this did not demonstrate a data-model failure or justify a consumer registry.

### TEST 8 — Replacement / supersession

**Scenario:** TEST_PROJECT_H / Panel 001 first accepts HELGA-CROUCH-CANDIDATE-03 and later replaces it with a newly created HELGA-CROUCH-CANDIDATE-04 because a consumer-specific review prefers an improved variant.

**Checkpoint: PASS for tested scenario**

#### Verified

The repository can express:

H / Panel 001
→ initial decision
→ Asset A (HELGA-CROUCH-CANDIDATE-03)
→ replacement decision
→ Asset B (HELGA-CROUCH-CANDIDATE-04)
→ current decision

The initial decision remains unchanged. The current decision is separate. The replacement reason is a separate durable fact.

Asset A keeps its original WITCH provenance. Asset B has its own origin in TEST_PROJECT_H / Panel 001. Neither asset becomes canonical for Helga automatically.

The replacement is consumer-specific. Asset A is not globally marked REPLACED and its REUSABLE state is not changed by this event.

#### Discoverability

The tested H → A → replacement → B chain is recoverable through explicit links among the panel state, initial decision, replacement decision, current decision, and both asset records.

Exhaustive repository-search adequacy remains unproven because the search interface used in Test #7 returned zero results.

#### Key rule earned

**A consumer-specific replacement can be represented as a new decision/event plus a new asset record, while preserving the historical consumption decision and both assets' provenance.**

No global supersession entity was required for the tested scenario.

#### What was deliberately not added

- replacement registry;
- supersession registry;
- global REPLACED/SUPERSEDED lifecycle state;
- graph;
- event sourcing;
- API;
- automatic propagation;
- automatic canonical promotion.

#### Open questions

- many sequential replacements / chronology;
- consumer-specific replacement versus global asset retirement/supersession;
- larger-scale discoverability;
- whether a dedicated replacement record type becomes useful;
- physical binary asset storage.

## Next checkpoints

### TEST 9 — Physical binary asset

**Scenario:** HELGA-CROUCH-CANDIDATE-04 receives a real Git-tracked 1×1 PNG and an explicit asset-record link to that file.

**Checkpoint: PASS for tested scenario**

Verified:
- asset record → physical binary is represented by an ordinary repository path;
- the binary actually exists in Git;
- TEST_PROJECT_H / Panel 001 → current decision → Asset B → physical binary is reconstructable;
- identical binary content may exist at two paths without requiring a second asset record;
- changed binary content does not automatically require a second asset record;
- removing the current physical path does not remove the asset record or its historical provenance;
- Git's own blob/content identity is distinct from repository path and asset identity.

Minimal rule earned:
**For the tested one-asset/one-primary-binary case, an explicit path from the asset record to a real Git-tracked binary is sufficient.**

No binary registry, blob registry, manifest, artifact database, asset/file version model, automatic checksum field, or global missing/orphan/broken status was justified.

Temporary observation branch: test9-missing-binary-observation demonstrated missing-file and changed-target behavior without altering the accepted main-branch state.

Still open:
- persistent content-identifier policy;
- binary relocation;
- many binaries per asset;
- many assets sharing one binary;
- external binary storage;
- large-scale reverse discovery.


### TEST 10 — New-sister reconstruction
A fresh sister receives only repository access and the test protocol. She must reconstruct current architecture, historical test findings, current open questions, and where to continue.

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
