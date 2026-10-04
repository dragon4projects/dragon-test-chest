# Architecture Build Plan & Checkpoints

**Repository:** dragon4projects/dragon-test-chest
**Purpose:** durable laboratory record for building and testing the GitHub-based project-memory architecture.
**Status:** active experiment; Test #11 produced a candidate freeze of the minimal confirmed core; Test #12 added a bounded binary-relocation result.

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

**Task:** WITCH-P017-HELGA-CROUCH-001.

Key rule earned:
**Panel decision is not character canon.**

### TEST 3 — Full production chain
**Checkpoint:** PASS

Verified chain:
request → task → character → candidate asset → decision → project/panel state → handoff.

Verified status distinction:
GENERATED ≠ ACCEPTED_FOR_PROJECT ≠ CANONICAL_FOR_CHARACTER ≠ REUSABLE.

### TEST 4 — Cross-project reuse
**Scenario:** TEST_PROJECT_B / Panel 003 reuses HELGA-CROUCH-CANDIDATE-03.

**Task:** TESTB-P003-HELGA-REUSE-001.

**Checkpoint:** PASS.

Verified:
- origin remains attached to the asset;
- consumption is recorded by the consuming project/panel;
- no duplicate asset record is required;
- origin and consumption do not rewrite one another;
- no global asset registry was required.

### TEST 5 — Asset lifecycle / reuse revocation
**Checkpoint:** PASS for tested scenario.

Verified:
- current asset record uses REUSABLE = NO;
- NO means “do not select this asset for a new production consuming task” for this test;
- a separate lifecycle decision records the change;
- old consumers remain unchanged historical facts;
- TEST_PROJECT_C records a local rejection;
- character canon and provenance remain unchanged.

### TEST 6 — Asset lifecycle / reuse reversal
**Checkpoint:** PASS for tested scenario.

Verified:
- HELGA-CROUCH-CANDIDATE-03 moved REUSABLE = NO → REUSABLE = YES;
- the previous lifecycle decision remained unchanged;
- TEST_PROJECT_D became a new consumer;
- historical consumers and provenance remained unchanged.

Key rule earned:
**A reusable asset may move YES → NO → YES without rewriting prior lifecycle decisions or historical consumer decisions, provided the current asset record carries the current recommendation and lifecycle changes are recorded separately.**

### TEST 7 — Multiple independent consumers
**Checkpoint:** PARTIAL.

Verified:
- seven known consumer scenarios can be represented without duplicate asset records;
- each consumer has its own request, panel state, and decision;
- each consumer decision explicitly identifies the same asset;
- historical TEST_PROJECT_C rejection remains distinct from current accepted consumers;
- origin remains WITCH / Panel 017;
- lifecycle decisions remain separate from consumption;
- the asset record's Related records plus consumer-local links allow reconstruction of the tested consumer set.

Boundary:
- the available GitHub connector search returned zero results for the tested asset and broad terms;
- exhaustive repository-search adequacy is therefore not proven;
- this did not demonstrate a data-model failure or justify a consumer registry.

### TEST 8 — Replacement / supersession
**Checkpoint:** PASS for tested scenario.

Verified:
- TEST_PROJECT_H / Panel 001 initially accepted HELGA-CROUCH-CANDIDATE-03;
- a later consumer-specific review accepted HELGA-CROUCH-CANDIDATE-04;
- the initial decision remained unchanged;
- the replacement reason is durable;
- both assets retain their own provenance;
- the replacement did not change Asset A's REUSABLE state and did not mark Asset A globally REPLACED/SUPERSEDED.

Key rule earned:
**Consumer-specific replacement is distinct from asset lifecycle replacement.**

No supersession registry or global replacement state was justified.

### TEST 9 — Physical binary asset
**Checkpoint:** PASS for tested scenario.

Verified:
- HELGA-CROUCH-CANDIDATE-04 has a real Git-tracked 1×1 PNG;
- the asset record links to it with an ordinary repository path;
- same-content copy and changed-content fixture did not automatically create new asset identities;
- missing physical file did not erase the asset record;
- Asset ID, file path, and Git blob/content identity are distinct.

Key rule earned:
**For the tested one-asset/one-primary-binary case, an explicit path from the asset record to a real Git-tracked binary is sufficient.**

Still open:
- persistent content identifiers;
- relocation;
- multiple binaries/assets sharing binaries;
- external binary storage;
- large-scale binary discovery.

### TEST 10 — New-sister reconstruction
**Checkpoint:** PASS — FOR TESTED SCOPE.

Reported result:
A fresh sister reconstructed the tested architecture using LIVING HANDOFF + EXPLICIT REPOSITORY EVIDENCE.

Boundary:
- exhaustive discovery was not proven.

Documentation gap closure:
A dedicated focused Test #10 handoff has now been added to the repository. It records the bounded execution result and its reconstruction method without claiming exhaustive discovery.

No new architecture was added for this documentation gap.

### TEST 11 — Architecture freeze candidate
**Checkpoint:** FREEZE CANDIDATE IS READY.

Test #11 audited the accumulated evidence rather than adding a new architecture.

#### Minimal confirmed core

1. Explicit repository records and links are sufficient for the tested project-memory scenarios.
2. The tested production chain is:
   request → task → character → candidate asset → decision → project/panel state → handoff.
3. Asset identity is distinct from character state, panel decision, provenance, consumer use, physical file path, and Git blob/content identity.
4. Current state and historical facts remain separate; current values can change without rewriting earlier decisions.
5. Asset reuse lifecycle is distinct from historical consumer decisions.
6. Consumer-specific replacement is distinct from global asset supersession.
7. A real binary can be linked from an asset record by an explicit repository path in the tested one-asset/one-primary-binary scenario.
8. Handoffs transfer context, not automatic authority.
9. No global registry/graph/database/API/synchronization/automatic propagation/new lifecycle vocabulary was justified by the tested scenarios.

#### Explicit boundary

The freeze does not cover:
- exhaustive discovery;
- arbitrary-scale search/reverse navigation;
- lifecycle governance at scale;
- many sequential lifecycle changes;
- many sequential replacements;
- global supersession/retirement;
- persistent content identifiers;
- relocation/multiple-binary semantics;
- external binary storage;
- large-scale binary governance.

The candidate freeze is stable but reversible by new evidence.

### TEST 12 — Binary relocation / content identity
**Checkpoint:** PASS — FOR TESTED REPOSITORY-LOCAL SCENARIO.

**Scenario:**
The primary binary for HELGA-CROUCH-CANDIDATE-04 was moved from:
`assets/characters/helga/binary/HELGA-CROUCH-CANDIDATE-04.png`
to:
`assets/characters/helga/binary/relocated/HELGA-CROUCH-CANDIDATE-04.png`.

The destination was byte-identical and resolved to the same Git blob SHA:
`62a5f8f47fec02344e5bf9061888262f677cf5d6`.

The asset record was explicitly updated to the new path and the old path was removed on the test branch.

Verified:
- Asset ID remained unchanged;
- provenance remained unchanged;
- consumer/replacement history remained unchanged;
- lifecycle and character canon remained unchanged;
- file path changed;
- Git blob/content identity did not change.

Key rule strengthened:
**File path is a mutable locator, not the semantic Asset identity.**

For the tested repository-local relocation scenario, no relocation entity, binary registry, or persistent content-ID field was needed.

Still open:
- modified binary content semantics;
- multiple binaries per asset;
- multiple assets sharing one binary;
- cross-repository relocation;
- external storage;
- persistent content-ID policy;
- large-scale binary governance.

## Next checkpoints

No broad Test #13 is required by Test #12.

If further validation is desired, choose exactly one remaining open boundary and construct the smallest real scenario that could falsify or extend the frozen core.

Smallest candidates now are:

1. **MANY SEQUENTIAL REPLACEMENTS** — test A → B → C → D for one consumer and inspect chronology/readability.
2. **CROSS-REPOSITORY / EXTERNAL-STORAGE RELOCATION** — test whether the current path + Git identity model still suffices when the binary crosses a repository/storage boundary.

Do not combine scale, governance, discovery, storage and replacement in one experiment.
