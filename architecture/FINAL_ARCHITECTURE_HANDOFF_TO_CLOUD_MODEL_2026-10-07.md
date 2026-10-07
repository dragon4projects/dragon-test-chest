# FINAL ARCHITECTURE HANDOFF TO CLOUD MODEL

**Date:** 2026-10-07  
**Repository:** `dragon4projects/dragon-test-chest`  
**Status:** FINAL MINIMAL ARCHITECTURAL CONTRACT / CLOUD-HANDOFF  
**Purpose:** transfer the complete tested architectural model to another cloud model without relying on the previous chat session.

---

# 0. READ THIS FIRST

This repository is an **architecture laboratory**, not a production repository.

The architecture was built incrementally through real tests #1–#14.

The governing principle is:

> **Do not add an architectural abstraction until a real scenario demonstrates that the current model cannot express the required fact cleanly.**

The current conclusion is:

> **No new abstraction is required for the tested scope.**

This is a **minimal architectural freeze**, not a claim that no future extension can ever be necessary.

The next cloud model must preserve the distinction between:

- OBSERVED FACT
- INFERENCE
- HYPOTHESIS
- ACCEPTED ARCHITECTURE

Never turn an open question into an architecture rule merely because it sounds useful.

---

# 1. WORKING MODEL

The tested durable-memory model is:

- **Chat = working memory**
- **GitHub = durable memory**
- **Handoff = transfer mechanism**
- **Tests = verification**

A handoff transfers:

- context;
- provenance;
- decisions;
- current state;
- open questions;
- reconstruction instructions.

A handoff does **not** automatically transfer authority.

Historical records are not rewritten merely because current state changes.

---

# 2. FINAL MINIMAL ARCHITECTURAL CONTRACT

The minimal proven chain is:

`REQUEST → TASK → CHARACTER → CANDIDATE ASSET → DECISION → PROJECT/PANEL STATE → HANDOFF`

The minimum conceptual record set proven by the tests is:

1. Request
2. Task
3. Character state
4. Asset
5. Decision
6. Project / Panel state
7. Handoff

Additional physical reality:

`ASSET → PHYSICAL BINARY`

Cross-cutting relationships:

`ASSET → ORIGIN`

`ASSET → CONSUMERS`

`ASSET → LIFECYCLE DECISIONS`

---

# 3. ASSET IDENTITY CONTRACT

The following identities are distinct:

`ASSET IDENTITY ≠ FILE PATH ≠ GIT BLOB / CONTENT IDENTITY`

Therefore:

- changing a repository path does not automatically create a new Asset;
- moving an identical binary does not automatically create a new Asset;
- Git blob SHA is not the semantic Asset ID;
- a persistent content-hash field has not been proven necessary.

For the tested one-asset / one-primary-binary scenario, an explicit repository path is sufficient as a physical locator.

---

# 4. ORIGIN / CONSUMPTION

The architecture explicitly separates:

`ORIGIN ≠ CONSUMPTION`

An Asset can originate in one project/panel and be consumed by another.

Cross-project reuse does not require:

- duplicate Asset records;
- a global consumer registry;
- a global asset registry.

The consuming project records its own decision/state.

The originating provenance remains intact.

---

# 5. CHARACTER / ASSET / PANEL BOUNDARIES

These are separate facts:

- Asset ≠ Character State
- Panel Decision ≠ Character Canon
- Accepted Project Asset ≠ Automatic Character Canon
- Origin ≠ Consumption
- Historical Fact ≠ Current State
- Consumer Replacement ≠ Global Supersession
- Asset Identity ≠ File Path
- Asset Identity ≠ Git Blob Identity

A project-specific acceptance must not silently become global character canon.

A panel decision must not rewrite character canon.

---

# 6. LIFECYCLE CONTRACT

The tested vocabulary is:

- `GENERATED`
- `ACCEPTED_FOR_PROJECT`
- `CANONICAL_FOR_CHARACTER`
- `REUSABLE`

The tested reuse lifecycle supports:

`YES → NO → YES`

Lifecycle changes are represented by separate decisions.

`REUSABLE=NO` does **not** mean:

- deleted;
- invalid;
- canonical;
- permanently forbidden;
- historical consumers were wrong;
- old decisions are reopened;
- provenance changed;
- authority changed.

In the tested scenario:

> `REUSABLE=NO` means the asset should not be selected for a new production consuming task.

A later `REUSABLE=YES` does not erase the previous NO decision.

---

# 7. REPLACEMENT CONTRACT

Replacement is consumer-specific.

Example:

`Consumer → A → B → C`

Each replacement is a separate durable decision.

A replacement decision records:

- consumer context;
- previous Asset;
- new Asset;
- reason.

The old decision remains historical.

The current consumer state identifies the currently selected Asset.

Therefore:

> **CONSUMER-SPECIFIC REPLACEMENT ≠ GLOBAL SUPERSESSION**

No global `REPLACED` or `SUPERSEDED` state is required by the tested scenarios.

---

# 8. MULTIPLE CONSUMERS

One Asset may be consumed by multiple independent consumers.

Example proven by Test #14:

- Panel 001: A → B → C
- Panel 002: A → D
- Panel 003: A → E → F
- Panel 004: A

All branches coexist.

The resulting current states can simultaneously be:

- Panel 001 → C
- Panel 002 → D
- Panel 003 → F
- Panel 004 → A

There is no global `CURRENT_ASSET`.

A consumer changing from A to B does not propagate the change to another consumer.

No synchronization or propagation mechanism is required for the tested model.

---

# 9. SEQUENTIAL REPLACEMENTS

Test #13 proved:

`A → B → C → D → E`

for one consumer context.

Test #14 proved independent sequential branches:

- A → B → C
- A → D
- A → E → F

The ordinary decision-record structure remained readable and reconstructable for these tested scenarios.

No:

- replacement-chain entity;
- lineage ID;
- version field;
- graph;
- database;
- supersession registry

was required.

This does **not** prove arbitrary-scale chronology.

---

# 10. CURRENT STATE VS HISTORY

This is a core architectural rule.

When current state changes:

1. preserve the old decision;
2. create the new decision;
3. update the relevant current state;
4. preserve provenance;
5. preserve the old Asset record.

Therefore:

`CURRENT STATE ≠ HISTORICAL DECISION`

A later consumer decision must never rewrite an earlier historical decision merely to make the repository look simpler.

---

# 11. PROVENANCE

Provenance remains attached to the individual Asset record.

Replacement does not rewrite provenance.

A replacement Asset has its own origin/provenance.

The architecture therefore preserves:

- where an Asset came from;
- where it was consumed;
- what replaced what;
- why it was replaced;
- what the current consumer state is.

---

# 12. DISCOVERABILITY CONTRACT

What is proven:

> **Known-entry-point reconstruction works.**

A new architect can start from a known Request/Handoff/Test record and follow explicit links to reconstruct the tested chain.

What is NOT proven:

- exhaustive repository discovery;
- arbitrary-scale reverse discovery;
- search-interface completeness;
- discovery from Git blob identity alone.

Test #7 exposed a GitHub search limitation: expected searches returned zero results in the tested interface.

This was treated as a **discoverability limitation**, not proof that the data model requires a registry.

Do not add a registry merely because arbitrary-scale discovery has not yet been tested.

---

# 13. PHYSICAL BINARY CONTRACT

Test #9 proved:

`ASSET RECORD → EXPLICIT REPOSITORY PATH → REAL GIT-TRACKED BINARY`

is sufficient for the tested one-asset / one-primary-binary scenario.

Test #12 proved:

- the binary can move to another repository path;
- the Asset ID can remain unchanged;
- provenance can remain unchanged;
- consumer history can remain unchanged;
- lifecycle can remain unchanged;
- character canon can remain unchanged;
- the Git blob SHA can remain unchanged.

Therefore:

> **File path is a mutable locator, not semantic Asset identity.**

No relocation registry was needed.

Still unproven:

- modified binary semantics;
- multiple binaries per Asset;
- multiple Assets sharing one binary;
- external storage;
- cross-repository relocation;
- persistent content-ID policy;
- large-scale binary governance.

---

# 14. HANDOFF CONTRACT

Handoff is a durable transfer mechanism.

A handoff must preserve enough information for another architect to reconstruct the current tested state.

A handoff does not grant authority automatically.

The correct interpretation is:

`HANDOFF = CONTEXT + PROVENANCE + DECISIONS + CURRENT STATE + OPEN QUESTIONS`

not:

`HANDOFF = NEW AUTHORITY`

---

# 15. WHAT IS DELIBERATELY NOT IN THE ARCHITECTURE

The following have **not** been justified for the tested scope:

- global Asset registry;
- global Consumer registry;
- global Current Asset registry;
- global Replacement/Supersession registry;
- replacement-chain entity;
- lineage system;
- version system;
- graph database;
- relational architecture/database layer;
- event sourcing;
- synchronization layer;
- automatic propagation;
- automatic canonical promotion;
- content-identity database;
- persistent Git blob abstraction;
- binary relocation entity;
- speculative API layer;
- speculative automation layer;
- speculative cross-project synchronization;
- additional global lifecycle statuses.

This is bounded negative evidence.

It is **not** a forever-ban.

---

# 16. FREEZE RULE

From this point:

> **Do not add a new architectural abstraction without a concrete scenario demonstrating why the current contract fails or becomes materially insufficient.**

If a future abstraction is proposed, require:

1. real scenario;
2. observed insufficiency/failure;
3. smallest possible architectural change;
4. explicit test;
5. durable write-back;
6. preservation of historical evidence.

---

# 17. TEST HISTORY

## Test #1 — Repository-first continuity

Result: PASS / WITH GAPS.

Established:

- repository-first continuity;
- handoff as durable transfer;
- authority boundary;
- historical/current separation;
- separation of technical research from project-specific conclusions.

---

## Test #2 — Minimal production chain

Scenario:

WITCH → Panel 017 → Helga → crouching pose.

Task:

`WITCH-P017-HELGA-CROUCH-001`

Established:

> Panel decision is not character canon.

---

## Test #3 — Full production chain

Result: PASS.

Established:

`request → task → character → candidate asset → decision → project/panel state → handoff`

Also established distinction:

`GENERATED ≠ ACCEPTED_FOR_PROJECT ≠ CANONICAL_FOR_CHARACTER ≠ REUSABLE`

---

## Test #4 — Cross-project reuse

Scenario:

TEST_PROJECT_B / Panel 003 reuses:

`HELGA-CROUCH-CANDIDATE-03`

Established:

- origin remains attached to Asset;
- consuming project records consumption;
- duplicate Asset record is unnecessary;
- origin and consumption remain separate;
- no global Asset registry is required.

---

## Test #5 — Asset lifecycle / reuse revocation

Result: PASS for tested scenario.

Established:

- current `REUSABLE=NO`;
- separate lifecycle decision;
- old consumers remain historical;
- provenance unchanged;
- character canon unchanged.

---

## Test #6 — Asset lifecycle / reuse reversal

Result: PASS.

Established:

`REUSABLE=NO → YES`

without rewriting:

- previous lifecycle decision;
- historical consumers;
- provenance.

A new consumer could use the Asset after reversal.

---

## Test #7 — Multiple independent consumers

Result: PASS for tested scope / discovery limitation retained.

Seven known consumer scenarios were represented without duplicate Asset records.

Explicit consumer-local records and Asset Related records allowed reconstruction.

Search completeness was not proven.

No Consumer Registry was justified.

---

## Test #8 — Consumer-specific replacement

Scenario:

TEST_PROJECT_H / Panel 001:

`HELGA-CROUCH-CANDIDATE-03 → HELGA-CROUCH-CANDIDATE-04`

Established:

- old decision preserved;
- replacement reason preserved;
- both Assets retain provenance;
- replacement is consumer-specific;
- Asset A was not globally superseded;
- Asset A's lifecycle was not automatically changed.

No supersession registry was justified.

---

## Test #9 — Physical binary Asset

Established:

- real Git-tracked binary can be linked through ordinary repository path;
- missing physical file does not erase Asset record;
- same-content copy shares Git blob identity;
- changed content does not automatically create semantic Asset identity.

Core result:

`ASSET IDENTITY ≠ FILE PATH ≠ GIT BLOB / CONTENT IDENTITY`

---

## Test #10 — New-sister reconstruction

Result:

**PASS — FOR TESTED SCOPE.**

A new sister reconstructed the tested architecture using:

- living handoff;
- explicit repository evidence.

Exhaustive discovery remained unproven.

---

## Test #11 — Architecture freeze candidate

Result:

**FREEZE CANDIDATE IS READY.**

The accumulated evidence was audited without adding speculative architecture.

The minimal confirmed core was separated from open questions and negative evidence.

---

## Test #12 — Binary relocation / content identity

Result:

**PASS — FOR TESTED REPOSITORY-LOCAL SCENARIO.**

Asset:

`HELGA-CROUCH-CANDIDATE-04`

Moved from:

`assets/characters/helga/binary/HELGA-CROUCH-CANDIDATE-04.png`

to:

`assets/characters/helga/binary/relocated/HELGA-CROUCH-CANDIDATE-04.png`

Same Git blob SHA:

`62a5f8f47fec02344e5bf9061888262f677cf5d6`

Established:

> File path is a mutable locator.

No relocation abstraction required.

---

## Test #13 — Many sequential replacements

Result:

**PASS — FOR TESTED SCOPE.**

Scenario:

TEST_PROJECT_I / Panel 001

`A → B → C → D → E`

Established:

- five Asset records;
- four replacement decisions;
- preserved history;
- preserved provenance;
- current state = E;
- consumer-specific scope;
- readable reconstruction;
- no replacement-chain abstraction.

Boundary:

This does not prove arbitrary-scale chronology.

---

## Test #14 — Multiple consumers + sequential replacements

Result:

**PASS — FOR TESTED SCOPE.**

Scenario:

- Panel 001: A → B → C
- Panel 002: A → D
- Panel 003: A → E → F
- Panel 004: A reuse

Established:

- independent current states coexist;
- replacement does not propagate;
- historical decisions remain intact;
- A remains reusable;
- another consumer can continue using A;
- provenance remains independent of replacement;
- no global current Asset;
- no supersession registry;
- no Consumer Registry;
- no replacement registry;
- no synchronization layer.

This is the strongest combined test so far.

---

# 18. CURRENT ARCHITECTURAL VERDICT

The evidence from Tests #1–#14 supports the following final statement:

> **The existing minimal repository-record architecture is sufficient for all tested scenarios. No new abstraction is required for the tested scope.**

The architecture is:

`REQUEST → TASK → CHARACTER → CANDIDATE ASSET → DECISION → PROJECT/PANEL STATE → HANDOFF`

with:

- explicit durable links;
- separate semantic Asset identity;
- mutable physical file locator;
- separate Git content identity;
- explicit provenance;
- consumer-local state;
- consumer-specific replacement;
- separate lifecycle decisions;
- preserved history;
- known-entry-point reconstruction.

---

# 19. OPEN QUESTIONS — NOT ARCHITECTURE YET

These remain hypotheses/open boundaries:

1. Very large numbers of interleaved replacement decisions.
2. Very large numbers of independent consumers.
3. Practical readability at much larger scale.
4. Exhaustive repository discovery.
5. Global Asset retirement/supersession.
6. Persistent content-ID policy.
7. Modified binary semantics.
8. Multiple binaries per Asset.
9. Multiple Assets sharing one binary.
10. Cross-repository binary relocation.
11. External binary storage.
12. Large-scale governance/authority for lifecycle recommendations.
13. Very large handoff readability.

These are **not failures** of the current architecture.

They become architecture work only when a real scenario creates actual pressure.

---

# 20. RECONSTRUCTION PROCEDURE FOR THE NEXT CLOUD MODEL

When a new cloud model takes over:

### Step 1
Read this handoff completely.

### Step 2
Read the living architecture handoff.

### Step 3
Read the plan/checkpoints.

### Step 4
Read the changes-after-tests log.

### Step 5
Read the relevant focused Test #13 and Test #14 handoffs.

### Step 6
Follow explicit links into the actual records.

### Step 7
When evaluating a new proposal, label each statement:

- OBSERVED FACT
- INFERENCE
- HYPOTHESIS
- ACCEPTED ARCHITECTURE

### Step 8
Do not infer missing architecture from imagined future scale.

### Step 9
If a real scenario is proposed, test the smallest possible case.

### Step 10
After a test:

- preserve old evidence;
- write the result;
- update the living handoff;
- update the plan;
- update the changes log;
- create a focused handoff when useful.

---

# 21. REPOSITORY MAP — ARCHITECTURE WORK

## Primary architecture laboratory

**Repository:**

[dragon4projects/dragon-test-chest](https://github.com/dragon4projects/dragon-test-chest)

This is the authoritative architecture laboratory.

Use it for:

- architecture design;
- tests;
- durable handoffs;
- experimental records;
- architecture decisions;
- test fixtures.

Do not move architecture experiments into production repositories.

---

# 22. CORE ARCHITECTURE FILES

### Living handoff

[architecture/ARCHITECTURE_HANDOFF_TO_NEXT_ARCHITECT.md](https://github.com/dragon4projects/dragon-test-chest/blob/main/architecture/ARCHITECTURE_HANDOFF_TO_NEXT_ARCHITECT.md)

Purpose:

- current durable architectural context;
- test history;
- current state;
- boundaries;
- open questions.

This is the living predecessor of this final cloud handoff.

### Final minimal contract

[architecture/FINAL_ARCHITECTURE_HANDOFF_TO_CLOUD_MODEL_2026-10-07.md](https://github.com/dragon4projects/dragon-test-chest/blob/main/architecture/FINAL_ARCHITECTURE_HANDOFF_TO_CLOUD_MODEL_2026-10-07.md)

Purpose:

- compact but detailed final contract;
- cloud-model transfer point;
- evidence-based architecture;
- repository map;
- repository-use rules.

### Architecture plan

[architecture/ARCHITECTURE_PLAN_AND_CHECKPOINTS.md](https://github.com/dragon4projects/dragon-test-chest/blob/main/architecture/ARCHITECTURE_PLAN_AND_CHECKPOINTS.md)

Purpose:

- original experiment plan;
- checkpoints;
- test sequence;
- what each test was supposed to prove;
- current boundary.

### Changes after tests

[architecture/ARCHITECTURE_CHANGES_AFTER_TESTS.md](https://github.com/dragon4projects/dragon-test-chest/blob/main/architecture/ARCHITECTURE_CHANGES_AFTER_TESTS.md)

Purpose:

- compact architecture-change ledger;
- evidence that each change came from a test;
- negative evidence;
- historical architecture evolution.

### Full architect backup

[architecture/architect%20backup%20full.md](https://github.com/dragon4projects/dragon-test-chest/blob/main/architecture/architect%20backup%20full.md)

Purpose:

- broader architectural backup;
- historical reconstruction notes;
- accessible chat-history boundary;
- durable backup of prior architectural interpretation.

Important:

This is **not** a byte-for-byte raw ChatGPT transcript. It explicitly records the transcript-access limitation rather than inventing missing turns.

---

# 23. HANDOFF INDEX

[correspondence/handoffs/INDEX.md](https://github.com/dragon4projects/dragon-test-chest/blob/main/correspondence/handoffs/INDEX.md)

This is the durable index of focused handoffs.

It includes:

- SAMA continuity handoff;
- WITCH continuity handoff;
- WITCH Panel 017;
- Test #4 cross-project reuse;
- Test #5 lifecycle;
- Test #6 lifecycle reversal;
- Test #7 multiple consumers;
- Test #8 replacement;
- Test #9 physical binary;
- Test #10 reconstruction;
- Test #12 binary relocation;
- Test #13 sequential replacements;
- Test #14 multiple consumers + sequential replacements.

---

# 24. FOCUSED ARCHITECTURE HANDOFFS

## Test #7

[HELGA_CROUCH_MULTIPLE_CONSUMERS_TEST7_HANDOFF_2026-10-03.md](https://github.com/dragon4projects/dragon-test-chest/blob/main/correspondence/handoffs/cross-project/HELGA_CROUCH_MULTIPLE_CONSUMERS_TEST7_HANDOFF_2026-10-03.md)

Evidence for:

- multiple consumers;
- no duplicate Asset;
- discoverability limitation.

## Test #8

[HELGA_CROUCH_REPLACEMENT_TEST8_HANDOFF_2026-10-04.md](https://github.com/dragon4projects/dragon-test-chest/blob/main/correspondence/handoffs/cross-project/HELGA_CROUCH_REPLACEMENT_TEST8_HANDOFF_2026-10-04.md)

Evidence for:

- consumer-specific replacement;
- preserved history;
- provenance;
- no global supersession.

## Test #9

[HELGA_CROUCH_PHYSICAL_BINARY_TEST9_HANDOFF_2026-10-04.md](https://github.com/dragon4projects/dragon-test-chest/blob/main/correspondence/handoffs/cross-project/HELGA_CROUCH_PHYSICAL_BINARY_TEST9_HANDOFF_2026-10-04.md)

Evidence for:

- physical binary;
- path relation;
- Asset/file/blob distinction.

## Test #10

[ARCHITECTURE_TEST10_NEW_SISTER_RECONSTRUCTION_HANDOFF_2026-10-04.md](https://github.com/dragon4projects/dragon-test-chest/blob/main/correspondence/handoffs/cross-project/ARCHITECTURE_TEST10_NEW_SISTER_RECONSTRUCTION_HANDOFF_2026-10-04.md)

Evidence for:

- successful new-sister reconstruction;
- bounded discovery claim.

## Test #12

[HELGA_CROUCH_BINARY_RELOCATION_TEST12_HANDOFF_2026-10-04.md](https://github.com/dragon4projects/dragon-test-chest/blob/main/correspondence/handoffs/cross-project/HELGA_CROUCH_BINARY_RELOCATION_TEST12_HANDOFF_2026-10-04.md)

Evidence for:

- repository-local binary relocation;
- mutable path;
- unchanged Asset ID;
- unchanged Git blob SHA.

## Test #13

[HELGA_SEQUENTIAL_REPLACEMENTS_TEST13_HANDOFF_2026-10-07.md](https://github.com/dragon4projects/dragon-test-chest/blob/main/correspondence/handoffs/cross-project/HELGA_SEQUENTIAL_REPLACEMENTS_TEST13_HANDOFF_2026-10-07.md)

Evidence for:

- A → B → C → D → E;
- sequential replacement;
- preserved history;
- current-state reconstruction.

## Test #14

[HELGA_MULTIPLE_CONSUMERS_SEQUENTIAL_REPLACEMENTS_TEST14_HANDOFF_2026-10-07.md](https://github.com/dragon4projects/dragon-test-chest/blob/main/correspondence/handoffs/cross-project/HELGA_MULTIPLE_CONSUMERS_SEQUENTIAL_REPLACEMENTS_TEST14_HANDOFF_2026-10-07.md)

Evidence for:

- multiple independent consumers;
- independent sequential branches;
- continued reuse of original Asset A;
- no global current Asset;
- no automatic propagation.

---

# 25. TEST #14 PRIMARY RECORDS

## Master request

[TESTJ-MULTIPLE-CONSUMERS-SEQUENTIAL-REPLACEMENTS-001.md](https://github.com/dragon4projects/dragon-test-chest/blob/main/correspondence/requests/test_project_j/TESTJ-MULTIPLE-CONSUMERS-SEQUENTIAL-REPLACEMENTS-001.md)

This is the recommended reconstruction entry point for Test #14.

## Assets

- [HELGA-MULTI-CONSUMER-ORIGIN-A.md](https://github.com/dragon4projects/dragon-test-chest/blob/main/assets/characters/helga/HELGA-MULTI-CONSUMER-ORIGIN-A.md)
- [HELGA-MULTI-CONSUMER-B.md](https://github.com/dragon4projects/dragon-test-chest/blob/main/assets/characters/helga/HELGA-MULTI-CONSUMER-B.md)
- [HELGA-MULTI-CONSUMER-C.md](https://github.com/dragon4projects/dragon-test-chest/blob/main/assets/characters/helga/HELGA-MULTI-CONSUMER-C.md)
- [HELGA-MULTI-CONSUMER-D.md](https://github.com/dragon4projects/dragon-test-chest/blob/main/assets/characters/helga/HELGA-MULTI-CONSUMER-D.md)
- [HELGA-MULTI-CONSUMER-E.md](https://github.com/dragon4projects/dragon-test-chest/blob/main/assets/characters/helga/HELGA-MULTI-CONSUMER-E.md)
- [HELGA-MULTI-CONSUMER-F.md](https://github.com/dragon4projects/dragon-test-chest/blob/main/assets/characters/helga/HELGA-MULTI-CONSUMER-F.md)

## Panel states

- [Panel 001](https://github.com/dragon4projects/dragon-test-chest/blob/main/projects/test_project_j/panels/001/PANEL_STATE.md) — current C
- [Panel 002](https://github.com/dragon4projects/dragon-test-chest/blob/main/projects/test_project_j/panels/002/PANEL_STATE.md) — current D
- [Panel 003](https://github.com/dragon4projects/dragon-test-chest/blob/main/projects/test_project_j/panels/003/PANEL_STATE.md) — current F
- [Panel 004](https://github.com/dragon4projects/dragon-test-chest/blob/main/projects/test_project_j/panels/004/PANEL_STATE.md) — current A

## Decisions

The full decision records are under:

- [projects/test_project_j/panels/001/decisions/](https://github.com/dragon4projects/dragon-test-chest/tree/main/projects/test_project_j/panels/001/decisions/)
- [projects/test_project_j/panels/002/decisions/](https://github.com/dragon4projects/dragon-test-chest/tree/main/projects/test_project_j/panels/002/decisions/)
- [projects/test_project_j/panels/003/decisions/](https://github.com/dragon4projects/dragon-test-chest/tree/main/projects/test_project_j/panels/003/decisions/)
- [projects/test_project_j/panels/004/decisions/](https://github.com/dragon4projects/dragon-test-chest/tree/main/projects/test_project_j/panels/004/decisions/)

---

# 26. TEST #13 PRIMARY RECORDS

## Request

[TESTI-P001-MANY-REPLACEMENTS-001.md](https://github.com/dragon4projects/dragon-test-chest/blob/main/correspondence/requests/test_project_i/TESTI-P001-MANY-REPLACEMENTS-001.md)

## Panel state

[projects/test_project_i/panels/001/PANEL_STATE.md](https://github.com/dragon4projects/dragon-test-chest/blob/main/projects/test_project_i/panels/001/PANEL_STATE.md)

## Assets

[assets/characters/helga/HELGA-SEQUENTIAL-REPLACEMENT-{A,B,C,D,E}.md](https://github.com/dragon4projects/dragon-test-chest/tree/main/assets/characters/helga/)

The exact A–E asset files are referenced by the focused Test #13 handoff.

## Decisions

[projects/test_project_i/panels/001/decisions/](https://github.com/dragon4projects/dragon-test-chest/tree/main/projects/test_project_i/panels/001/decisions/)

Contains:

- initial decision;
- A→B;
- B→C;
- C→D;
- D→E;
- current decision.

---

# 27. EARLIER TEST RECORDS / SOURCE MATERIAL

The repository contains the earlier WITCH / Helga production-test chain and cross-project records.

Important source areas:

- [assets/characters/helga/](https://github.com/dragon4projects/dragon-test-chest/tree/main/assets/characters/helga/)
- [projects/](https://github.com/dragon4projects/dragon-test-chest/tree/main/projects/)
- [correspondence/requests/](https://github.com/dragon4projects/dragon-test-chest/tree/main/correspondence/requests/)
- [correspondence/handoffs/](https://github.com/dragon4projects/dragon-test-chest/tree/main/correspondence/handoffs/)

These are the primary durable evidence areas.

---

# 28. REPOSITORIES TO USE FOR ARCHITECTURE

## 1. Architecture laboratory — USE THIS

[dragon4projects/dragon-test-chest](https://github.com/dragon4projects/dragon-test-chest)

Use for:

- all architecture experiments;
- all test scenarios;
- architecture documents;
- handoffs;
- durable architecture records;
- test fixtures;
- new evidence.

This is the repository where architecture is allowed to evolve.

---

## 2. Production repository — READ/REFERENCE ONLY

[dragon4projects/songs_panels](https://github.com/dragon4projects/songs_panels)

Purpose:

- production context;
- real production structures/assets/panels where needed for architectural observation.

Do **not** modify it during architecture experiments.

Architecture changes must be tested in `dragon-test-chest`.

---

## 3. Production repository — READ/REFERENCE ONLY

[dragon4projects/dragon_cave_godot](https://github.com/dragon4projects/dragon_cave_godot)

Purpose:

- production implementation context;
- Godot-side reality;
- future validation against actual consuming system when a test genuinely requires it.

Do **not** modify it during architecture experiments.

Architecture changes must first be proven in `dragon-test-chest`.

---

# 29. REPOSITORY SAFETY RULE

Never perform architecture experiments directly in:

- `dragon4projects/songs_panels`
- `dragon4projects/dragon_cave_godot`

If a production reality needs to be observed:

1. read it;
2. record the observed fact;
3. reproduce the smallest relevant scenario in `dragon-test-chest`;
4. test there;
5. only after proof exists should production implementation work be considered.

---

# 30. SOURCE PRECEDENCE

When sources disagree, use this order:

1. **Observed current repository state**
2. **Explicit durable test record**
3. **Focused test handoff**
4. **Living architecture handoff**
5. **Architecture plan / change log**
6. **Older backup**
7. **Chat memory / conversational recollection**
8. **Inference**

A newer explicit test result can refine an earlier hypothesis.

It must not erase the historical fact that the earlier hypothesis existed.

---

# 31. IMPORTANT CAUTION ABOUT THE BACKUP

`architecture/architect backup full.md` contains a durable interpretation of the accessible architectural history.

It explicitly states that the assistant did not have access to a complete raw platform transcript.

Therefore:

> Do not treat that file as a byte-for-byte transcript.

Treat it as architectural backup and evidence summary.

The focused test records and actual repository files are stronger evidence for what was actually implemented.

---

# 32. HOW TO EXTEND THE ARCHITECTURE

If the next cloud model receives a new architecture request:

### Do not start by designing.

Start by asking:

**What real scenario are we trying to represent?**

Then:

1. identify the existing records involved;
2. identify the exact missing fact;
3. check whether existing links/records already express it;
4. construct the smallest test;
5. observe failure or insufficiency;
6. add the smallest possible change;
7. repeat the test;
8. update durable architecture documents.

If the existing model works:

> **No new abstraction required.**

Do not invent one for elegance.

---

# 33. FINAL HANDOFF MESSAGE TO THE NEXT CLOUD MODEL

You are inheriting an architecture that has already survived fourteen deliberately bounded tests.

Your job is **not** to redesign it.

Your first responsibility is to preserve the proven minimal core.

Use the repository as the source of durable truth.

When you see a possible missing abstraction, treat it as a hypothesis until a real scenario proves the need.

The current architecture is intentionally small.

That smallness is a result of testing, not an unfinished draft.

The correct default response to a new imagined complexity is:

> **Can the existing records and explicit links already represent this?**

If yes, keep the architecture unchanged.

If no, design the smallest test that could prove it.

Only evidence may expand the contract.

---

# 34. FINAL STATUS

**ARCHITECTURE STATUS: MINIMAL CORE FROZEN FOR TESTED SCOPE**

**TESTS COMPLETED:** #1–#14

**LATEST RESULT:** Test #14 PASS — FOR TESTED SCOPE

**NEW ABSTRACTION REQUIRED:** NO

**PRODUCTION REPOSITORIES TO MODIFY DURING ARCHITECTURE WORK:** NONE

**PRIMARY ARCHITECTURE REPOSITORY:** `dragon4projects/dragon-test-chest`

**NEXT ACTION:** only a real new scenario may reopen the freeze.

---

# 35. ONE-SENTENCE CONTRACT

> **Use ordinary durable repository records and explicit links to preserve Request → Task → Character → Asset → Decision → Project/Panel State → Handoff, keep identity/origin/history/current state/consumption/replacement/lifecycle separate, and introduce no global abstraction unless a real tested scenario proves the existing model insufficient.**
