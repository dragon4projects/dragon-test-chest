# Architecture Changes After Tests

**Repository:** dragon4projects/dragon-test-chest
**Purpose:** compact durable log of architectural changes earned by experiments.
**Rule:** record what changed because of evidence; do not turn hypotheses into architecture.

## 2026-10-03 — Baseline after Tests 1–4

### Test 1
**Observed:** handoffs and knowledge-base material already supported continuity, but the repository lacked a persistent production chain.

**Change:** none directly. The gap became the input to Test 2.

### Test 2
**Observed:** a small real production scenario required persistent request, character, panel, asset, decision and handoff records.

**Change introduced:**
- correspondence/requests/
- characters/
- projects/<project>/panels/
- projects/<project>/panels/<panel>/decisions/
- assets/characters/<character>/

**Architecture rule earned:** asset identity is separate from character state; panel decision is separate from character canon.

### Test 3
**Observed:** the full production chain could be reconstructed without a global database.

**Change:** no additional global layer.

**Status vocabulary retained:**
- GENERATED
- ACCEPTED_FOR_PROJECT
- CANONICAL_FOR_CHARACTER
- REUSABLE

These are distinct facts, not one lifecycle state.

### Test 4
**Observed:** one existing asset could be consumed by another project without duplicating the asset record.

**Change introduced:** consuming project/panel request and decision records plus a cross-project handoff.

**Architecture rule earned:**
ORIGIN ≠ CONSUMPTION.

Origin stays with the asset. A consuming project records its own local acceptance.

**Explicitly rejected at this stage:** global consumer registry / asset registry.

### Test 5
**Observed:** an asset could be reusable historically but not recommended for new reuse, while old accepted uses remain valid.

**Change introduced:**
- current asset record may express REUSABLE = NO;
- the meaning of NO must be explicit for the tested case;
- a separate lifecycle decision records the change;
- a new consumer records a local rejection;
- existing consumer records are not rewritten.

**Architecture rule earned:**
Current reuse recommendation and historical reuse are different facts.

**Important boundary:**
REUSABLE = NO in this test means “do not select this asset for a new production consuming task.” It does not mean deleted, defective, invalid, or historically revoked.

**New open question exposed:**
Who owns a later asset-level reuse recommendation? The test records the decision at the asset level, but this is a test observation, not yet a universal governance rule.

## Current architecture state after Test 5

The smallest currently evidenced chain is:

request
→ task
→ character
→ asset
→ decision
→ panel/project state
→ handoff

For reuse:

originating asset
→ originating decision
→ consuming request
→ consuming decision

For lifecycle change:

historical reusable state
→ current reuse recommendation
→ local new-use decision

## Deliberately NOT added

- global asset registry;
- global consumer index;
- event sourcing;
- graph database;
- message/event bus;
- automated lifecycle engine;
- universal status machine;
- mandatory project-wide state database;
- governance framework beyond what the test requires.

These remain hypotheses/open questions until a concrete test breaks the current model.


## 2026-10-03 — Test 5 full report confirmation

The full report confirms the minimal solution: explicit current `REUSABLE` semantics, a focused asset lifecycle decision, unchanged historical consumers, local decisions for new consumers, and no global registry. The test also confirms the distinction between historical reuse and current recommendation.

**New open question:** ownership of later asset-level reuse recommendations. This remains an observed architectural question, not a reason to add governance machinery yet.

**Next proposed test:** REUSE REVERSAL.


## 2026-10-03 — Test 6 — Asset lifecycle / reuse reversal

### Observed
HELGA-CROUCH-CANDIDATE-03 was already recorded as REUSABLE = NO after Test #5. The test changed the current asset record to REUSABLE = YES and defined YES as eligible to be considered for a new production consuming task.

The previous lifecycle decision was not rewritten. A separate reversal lifecycle decision was created.

TEST_PROJECT_D / Panel 001 then recorded a normal new consuming scenario:
request → panel state → decision.

### Inference
The current boolean REUSABLE is sufficient for the tested reversal. A separate lifecycle decision preserves the historical NO event while the asset record exposes the current YES state.

Historical consumer decisions do not need retroactive mutation:
- WITCH / Panel 017 remains accepted.
- TEST_PROJECT_B / Panel 003 remains accepted.
- TEST_PROJECT_C / Panel 001 remains REJECTED_FOR_NEW_USE as a historical decision made while REUSABLE = NO.
- TEST_PROJECT_D / Panel 001 records a new accepted use after REUSABLE = YES.

### Hypothesis
If many lifecycle changes accumulate, discoverability or chronology may eventually become awkward. This test does not prove that a richer versioning system is necessary.

Authorization for who may reverse a lifecycle recommendation remains unresolved.

### Architecture change earned
No new lifecycle vocabulary or global system was required.

The tested model now supports:

REUSABLE = YES
→ REUSABLE = NO
→ REUSABLE = YES

while preserving the earlier lifecycle decision and all historical consumers.

### Artifacts added
- assets/characters/helga/HELGA-CROUCH-CANDIDATE-03_LIFECYCLE_REVERSAL_DECISION.md
- correspondence/requests/test_project_d/TESTD-P001-HELGA-REUSE-001.md
- projects/test_project_d/panels/001/PANEL_STATE.md
- projects/test_project_d/panels/001/decisions/HELGA_REUSE_ASSET_DECISION.md
- correspondence/handoffs/cross-project/HELGA_CROUCH_REUSE_REVERSAL_HANDOFF_2026-10-03.md

### What was deliberately not added
- ACTIVE / INACTIVE / RESTORED / REVIVED / RETIRED / DEPRECATED / SUPERSEDED
- VALID_FROM / VALID_TO
- global asset registry
- global lifecycle database
- graph
- event sourcing
- API
- automatic propagation
- synchronization
- automatic canonical promotion
- universal governance system

### Next minimal test
TEST 7 — Multiple independent consumers: determine whether repository search remains adequate when one asset has several consumers. Do not add a consumer registry unless the scenario demonstrates a concrete discoverability failure.


## 2026-10-03 — Test 6 full report confirmation

The submitted Test #6 report confirms PASS: the model expresses REUSABLE YES → NO → YES without a new architectural entity.

Key confirmation:
- current asset record carries the current REUSABLE state;
- each lifecycle transition can have its own focused decision;
- the previous NO decision remains historical and is not rewritten;
- TEST_PROJECT_C remains historically REJECTED_FOR_NEW_USE;
- TEST_PROJECT_D can become a new consumer after restoration;
- old consumers, provenance, and character canon remain unchanged.

Newly proven:
**A later lifecycle reversal does not retroactively invalidate or rewrite an earlier consumer decision.**

No richer lifecycle vocabulary or registry was justified.

Next minimal test:
**TEST #7 — MULTIPLE INDEPENDENT CONSUMERS**, specifically to stress discoverability with many consumers and determine whether repository search remains sufficient.
