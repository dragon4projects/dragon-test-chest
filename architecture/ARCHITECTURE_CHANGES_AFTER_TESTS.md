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
Ownership of later cross-project reuse recommendations remains unresolved.

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

### Architecture rule earned
**Consumer replacement is distinct from asset lifecycle replacement.**

For the tested case, an asset does not need a global REPLACED/SUPERSEDED state merely because one consumer moved from it to another asset.

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

## 2026-10-04 — Test 9 — Physical binary asset

### Scenario
HELGA-CROUCH-CANDIDATE-04 was connected to a real 1×1 PNG stored in the repository:
assets/characters/helga/binary/HELGA-CROUCH-CANDIDATE-04.png

The asset record was updated with the explicit physical-file path.

### Observed
- The binary exists as a real Git-tracked object.
- The existing asset record can point directly to the physical file with an ordinary repository path.
- TEST_PROJECT_H / Panel 001 → current decision → HELGA-CROUCH-CANDIDATE-04 → physical binary is reconstructable.
- A second path containing identical binary content has the same Git blob SHA as the primary file.
- A modified binary fixture has a different Git blob SHA.
- Neither the identical copy nor the changed binary was automatically promoted to a new asset identity.
- On temporary branch test9-missing-binary-observation, the primary binary path was removed while the asset record remained.
- On that same temporary branch, the asset record was pointed to the modified binary fixture without changing the Asset ID. This was an experiment only and was not accepted as main-branch state.

### Identity boundary
Test #9 demonstrated:
ASSET IDENTITY ≠ FILE PATH ≠ GIT BLOB/CONTENT IDENTITY.

### Architecture change earned
For the tested one-asset/one-primary-binary case, an explicit path from the asset record to a real Git-tracked binary is sufficient.

The architecture does not currently need a separate binary registry or manually duplicated content identifier in the asset record.

A missing physical file does not erase the asset record, provenance, or historical decisions.

A changed binary does not automatically imply a new asset.

### What was deliberately not added
- binary registry;
- blob registry;
- manifest;
- artifact database;
- asset version entity;
- file version entity;
- automatic checksum/hash field;
- global MISSING/BROKEN/ORPHANED status;
- automatic synchronization;
- external binary store.

### Inference
Git already supplies physical content identity and history at the repository layer. The test did not demonstrate a need for the architecture to duplicate that mechanism.

### Hypotheses
- persistent content identifiers may become useful at larger scale or across storage boundaries;
- binary relocation may expose a need to distinguish path change from content change;
- many binaries per asset and many assets sharing one binary may require additional semantics;
- external binary storage may require a different link model.

### Next minimal test
TEST 10 — NEW-SISTER RECONSTRUCTION.

## 2026-10-04 — Test 10 — New-sister reconstruction

### Result
**PASS — FOR TESTED SCOPE.**

The test execution reported that a fresh sister reconstructed the tested architecture using:

LIVING HANDOFF
+
EXPLICIT REPOSITORY EVIDENCE.

### Bounded interpretation
The result supports semantic reconstruction of the tested architecture. It does not prove exhaustive repository discovery.

### Documentation gap closure
A dedicated focused handoff was added after Test #11 identified its absence:
- correspondence/handoffs/cross-project/ARCHITECTURE_TEST10_NEW_SISTER_RECONSTRUCTION_HANDOFF_2026-10-04.md

This handoff records the reported reconstruction method and bounded result without upgrading the evidence beyond what the test execution established.

No architecture was added for this documentation repair.

## 2026-10-04 — Test 11 — Architecture freeze candidate

### Audit result
**PASS.**

Test #11 did not add a new architecture. It audited the accumulated evidence and separated:

- CONFIRMED ARCHITECTURE;
- explicit boundaries;
- OPEN QUESTIONS;
- NOT PROVEN hypotheses;
- NEGATIVE EVIDENCE.

### Candidate freeze verdict
**FREEZE CANDIDATE IS READY.**

### Minimal confirmed core
- explicit repository records and links are sufficient for the tested project-memory scenarios;
- the tested production chain is REQUEST → TASK → CHARACTER → CANDIDATE ASSET → DECISION → PROJECT/PANEL STATE → HANDOFF;
- asset identity is distinct from character state, panel decision, origin/consumption, file path, and Git blob/content identity;
- current state and historical fact remain separate;
- reuse lifecycle remains distinct from consumer history;
- consumer-specific replacement remains distinct from global asset supersession;
- an explicit path is sufficient to connect an asset record to a real Git-tracked binary in the tested one-asset/one-primary-binary case;
- handoffs transfer context, not automatic authority.

### Not frozen
- exhaustive discovery;
- arbitrary-scale reverse navigation;
- lifecycle governance at scale;
- many sequential lifecycle changes;
- many sequential replacements;
- global supersession/retirement;
- persistent content identifiers;
- relocation/multiple-binary semantics;
- external binary storage;
- large-scale binary governance.

### Negative evidence retained
Tests did not justify:
- global asset registry;
- consumer registry;
- supersession/replacement registry;
- graph/database/API;
- synchronization;
- automatic propagation;
- automatic canonical promotion;
- new global lifecycle vocabulary.

This is evidence of non-necessity for the tested scenarios, not a permanent prohibition.

### Freeze property
The candidate freeze is:
**STABLE BUT REVERSIBLE BY NEW EVIDENCE.**

A future test may weaken, split, extend, or replace a rule without rewriting Tests #1–#11.

### Next minimal test
No broad Test #12 is required. If further validation is desired, test exactly one existing open boundary, preferably:
- many sequential replacements, OR
- binary relocation/content identity.

Do not combine scale, governance, discovery, and storage in one experiment.

## 2026-10-04 — Test 12 — Binary relocation / content identity

### Scenario
The primary binary for HELGA-CROUCH-CANDIDATE-04 was moved from:
`assets/characters/helga/binary/HELGA-CROUCH-CANDIDATE-04.png`
to:
`assets/characters/helga/binary/relocated/HELGA-CROUCH-CANDIDATE-04.png`.

The destination was byte-identical and resolved to the same Git blob SHA:
`62a5f8f47fec02344e5bf9061888262f677cf5d6`.

The asset record was explicitly updated to the new path and the old path was removed on the test branch.

### Observed
- Asset ID remained HELGA-CROUCH-CANDIDATE-04;
- provenance remained unchanged;
- consumer/replacement history remained unchanged;
- REUSABLE remained unchanged;
- character canon remained unchanged;
- file path changed;
- Git blob/content identity did not change.

### Architecture change earned
For the tested repository-local relocation scenario:

**FILE PATH is a mutable locator, not the semantic Asset identity.**

Same binary content moved to a new repository path can remain the same Asset when the durable asset record is explicitly updated to the new locator.

### Minimal change introduced
- one focused binary-relocation decision;
- one focused Test #12 handoff;
- the existing asset record's physical path updated;
- old path removed on the test branch;
- Test #10 focused handoff added to close the earlier documentation gap.

### What was deliberately not added
- relocation entity;
- binary registry;
- persistent content-ID field;
- asset version entity;
- synchronization layer;
- global lifecycle state.

### Boundary
This does not establish semantics for modified binary content, multiple binaries per asset, multiple assets sharing one binary, cross-repository relocation, external storage, persistent content-ID policy, or large-scale binary governance.

### Next minimal test
No broad Test #13 is required. If further validation is desired, choose exactly one remaining open boundary:
- MANY SEQUENTIAL REPLACEMENTS; or
- CROSS-REPOSITORY / EXTERNAL-STORAGE RELOCATION.


## 2026-10-07 — Test #13 — Many sequential replacements

### Scenario
TEST_PROJECT_I / Panel 001 was tested through four sequential consumer-specific replacements:

A → B → C → D → E

### Observed
The existing model represented five asset records, one initial acceptance, four replacement decisions, and one current decision without rewriting historical decisions.

Each replacement decision preserved:
- old asset;
- new asset;
- consumer-specific reason;
- consumer scope;
- provenance boundary;
- lifecycle separation.

Panel state and current decision both identify E as current.

### Architecture change earned
No new architecture was required.

The existing representation of asset records, request/task, panel state, separate decision records, explicit links, and handoff is sufficient for the tested many-sequential-replacement scenario.

### Negative result
No replacement registry, lineage entity, version field, supersession mechanism, graph, database, synchronization layer, or new lifecycle status was justified.

### Reconstruction
A repository-first reconstruction from the Test #13 request and its explicit links recovered A → B → C → D → E and current E.

### Boundary
The test does not establish arbitrary-scale chronology, exhaustive discovery, global supersession/retirement semantics, or behavior beyond the tested one-consumer chain.

### Focused artifact
correspondence/handoffs/cross-project/HELGA_SEQUENTIAL_REPLACEMENTS_TEST13_HANDOFF_2026-10-07.md
