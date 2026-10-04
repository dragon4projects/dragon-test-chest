# Architecture Changes After Tests

**Repository:** dragon4projects/dragon-test-chest
**Purpose:** compact durable log of architectural changes earned by experiments.
**Rule:** record what changed because of evidence; do not turn hypotheses into architecture.

## 2026-10-03 — Tests 1–4

Test 1 established repository-first continuity and handoff authority boundaries.

Test 2 introduced persistent request, character, panel, asset, decision and handoff records for a real production scenario.

Test 3 established the full production chain and kept GENERATED, ACCEPTED_FOR_PROJECT, CANONICAL_FOR_CHARACTER and REUSABLE distinct.

Test 4 established cross-project reuse without duplicate asset records and earned ORIGIN ≠ CONSUMPTION.

No global asset registry or consumer registry was introduced.

## 2026-10-03 — Test 5 — Asset lifecycle / reuse revocation

### Observed
HELGA-CROUCH-CANDIDATE-03 could remain historically used while its current REUSABLE recommendation changed to NO.

### Change introduced
- current asset record may express REUSABLE = NO;
- a separate lifecycle decision records the change;
- a new consumer records a local rejection;
- existing consumer records are not rewritten.

### Rule earned
Current reuse recommendation and historical reuse are different facts.

### Open question
Ownership of later asset-level reuse recommendations remains unresolved.

## 2026-10-03 — Test 6 — Asset lifecycle / reuse reversal

### Observed
HELGA-CROUCH-CANDIDATE-03 moved REUSABLE=NO → REUSABLE=YES. The previous lifecycle decision remained unchanged and TEST_PROJECT_D became a new consumer.

### Architecture change earned
No new lifecycle vocabulary or global system was required. Current state plus separate focused lifecycle decisions is sufficient for the tested YES → NO → YES sequence.

### Still open
Governance/authority and large-scale lifecycle chronology.

## 2026-10-03 — Test 7 — Multiple independent consumers

### Observed
Three additional consumers were added for HELGA-CROUCH-CANDIDATE-03. Seven known consumer scenarios were represented without duplicate asset records.

The available GitHub connector search returned zero results for the asset and broad terms. Explicit Related records and consumer-local links nevertheless allowed reconstruction of the tested set.

### Architecture change earned
No consumer registry, global index, graph, API, synchronization, or richer lifecycle vocabulary was justified.

### Bounded conclusion
The record model represents the tested independent consumers, but exhaustive repository-search adequacy remains unproven.

## 2026-10-04 — Test 8 — Replacement / supersession

### Scenario
TEST_PROJECT_H / Panel 001 first accepted HELGA-CROUCH-CANDIDATE-03. A later consumer-specific review preferred an improved variant, so HELGA-CROUCH-CANDIDATE-04 was created and selected as the current asset.

### Observed
The repository expresses:

H / Panel 001
→ initial decision
→ HELGA-CROUCH-CANDIDATE-03
→ replacement decision
→ HELGA-CROUCH-CANDIDATE-04
→ current decision

The initial decision was not rewritten.

Asset A retains its original WITCH provenance. Asset B has its own TEST_PROJECT_H / Panel 001 origin. Neither becomes canonical for Helga automatically.

The replacement is consumer-specific and did not alter Asset A's current REUSABLE state. Asset A was not globally marked REPLACED.

### Minimal change introduced
The scenario required only:
- one new asset record for HELGA-CROUCH-CANDIDATE-04;
- one request for the replacement task;
- the existing panel state pattern;
- one historical initial decision;
- one focused replacement decision expressing A → B and the reason;
- one current decision for B;
- explicit links from the panel and asset records;
- one focused handoff and index entry.

No existing historical decision was edited.

### Architecture rule earned
**Consumer replacement is distinct from asset lifecycle replacement.**

For the tested case, an asset does not need a global REPLACED/SUPERSEDED state merely because one consumer moved from it to another asset.

A replacement can be represented as a new durable decision/fact while the old consumption remains historically true.

### Provenance result

Asset A:
- origin = WITCH / Panel 017 / WITCH-P017-HELGA-CROUCH-001.

Asset B:
- origin = TEST_PROJECT_H / Panel 001 / TESTH-P001-HELGA-REPLACEMENT-001.

Replacement did not change either origin.

### Lifecycle separation

The replacement did not imply:
- REUSABLE = NO;
- deleted;
- invalid;
- canonical;
- globally superseded.

These remain independent questions.

### What was deliberately not added
- supersession registry;
- replacement registry;
- global asset registry;
- consumer registry;
- graph database;
- event sourcing;
- API;
- automatic propagation;
- automatic canonical promotion;
- global REPLACED/SUPERSEDED lifecycle vocabulary.

### Inference
For the tested one-consumer replacement scenario, the existing record model plus one focused replacement decision is sufficient to preserve historical consumption, current consumption, replacement reason, and provenance.

### Hypotheses
Many sequential replacements may make chronology harder to read. A future test may also show a need to distinguish a consumer-specific replacement from a global asset retirement/supersession. Neither is proven now.

### Artifacts added
- assets/characters/helga/HELGA-CROUCH-CANDIDATE-04.md
- correspondence/requests/test_project_h/TESTH-P001-HELGA-REPLACEMENT-001.md
- projects/test_project_h/panels/001/PANEL_STATE.md
- projects/test_project_h/panels/001/decisions/HELGA_INITIAL_ASSET_DECISION.md
- projects/test_project_h/panels/001/decisions/HELGA_ASSET_REPLACEMENT_DECISION.md
- projects/test_project_h/panels/001/decisions/HELGA_CURRENT_ASSET_DECISION.md
- correspondence/handoffs/cross-project/HELGA_CROUCH_REPLACEMENT_TEST8_HANDOFF_2026-10-04.md
- correspondence/handoffs/INDEX.md updated

### Next minimal test
TEST 9 — PHYSICAL BINARY ASSET.
