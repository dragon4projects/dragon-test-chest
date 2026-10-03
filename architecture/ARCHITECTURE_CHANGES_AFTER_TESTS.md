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
