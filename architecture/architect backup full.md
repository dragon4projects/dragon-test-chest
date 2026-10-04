# ARCHITECT BACKUP FULL

## Dragon Test Chest — Architecture Backup

**Repository:** `dragon4projects/dragon-test-chest`
**Purpose:** durable full backup for transfer to a future architect sister.
**Status:** current architectural backup
**Scope:** accumulated architecture and evidence through Test #12.

---

## 0. OPERATING MODEL

This repository is an **ARCHITECTURE LABORATORY**, not a production repository.

Working model:

- CHAT = WORKING MEMORY
- GITHUB = DURABLE MEMORY
- HANDOFF = TRANSFER MECHANISM
- TESTS = VERIFICATION

The architecture is intentionally minimal and evidence-driven.

Do not add architecture merely because a possible future scenario can be imagined. Add a new abstraction only when a real test or repository evidence demonstrates that the existing model cannot express the required fact cleanly.

The architecture is **stable but reversible by new evidence**.

A later test may change a frozen rule. It must not rewrite historical test results.

---

# 1. CONFIRMED ARCHITECTURE CORE

## CORE RULE 1 — Durable linked records

Architectural facts can be represented by ordinary durable repository records connected by explicit links.

Confirmed through Tests #2–#12 for the tested scenarios.

## CORE RULE 2 — Production chain

The tested production chain is:

REQUEST
→ TASK
→ CHARACTER
→ CANDIDATE ASSET
→ DECISION
→ PROJECT/PANEL STATE
→ HANDOFF

This was demonstrated through the WITCH / Panel 017 scenario and subsequent test scenarios.

## CORE RULE 3 — Identity boundaries

ASSET IDENTITY is distinct from:

- CHARACTER STATE
- PANEL DECISION
- ORIGIN
- CONSUMPTION
- FILE PATH
- GIT BLOB / CONTENT IDENTITY

## CORE RULE 4 — Current vs historical

CURRENT STATE and HISTORICAL FACT are separate facts.

Historical decisions are not rewritten merely because a later decision changes current state.

Confirmed examples:

REUSABLE = YES
→ REUSABLE = NO
→ REUSABLE = YES

and:

Asset A
→ replacement
→ Asset B

## CORE RULE 5 — Lifecycle separation

REUSABLE lifecycle state is separate from historical consumer decisions.

Changing REUSABLE does not automatically alter old consumers, provenance, character canon, or historical decisions.

## CORE RULE 6 — Consumer-specific replacement

CONSUMER-SPECIFIC REPLACEMENT is not automatically GLOBAL ASSET SUPERSESSION.

A consumer may move:

Asset A
→ replacement decision
→ Asset B

without declaring Asset A globally replaced or superseded.

## CORE RULE 7 — Physical binary locator

For the tested one-asset / one-primary-binary Git scenario, an explicit repository path is sufficient:

ASSET RECORD
→ PHYSICAL FILE

The path is a locator, not the semantic identity of the asset.

## CORE RULE 8 — Handoff

HANDOFF transfers context, provenance, decisions, open state, and reconstruction guidance.

Handoff does not automatically transfer authority.

Test #10 demonstrated that a new sister could reconstruct the tested architecture from living handoff plus explicit repository evidence.

## CORE RULE 9 — No speculative global infrastructure

For the tested scenarios, none of the following has been necessary:

- global asset registry
- consumer registry
- graph
- database
- API
- synchronization layer
- automatic propagation
- automatic canonical promotion
- global supersession registry
- new global lifecycle vocabulary

This is bounded negative evidence, not a claim that such mechanisms can never be needed.

## CORE RULE 10 — File path is not asset identity

Test #12 confirmed that moving the same binary content to a new repository path does not by itself create a new asset.

The semantic Asset ID remains stable while the physical locator changes.

---

# 2. OWNERSHIP AND BOUNDARIES

Confirmed distinctions:

ASSET ≠ CHARACTER STATE

PANEL DECISION ≠ CHARACTER CANON

ORIGIN ≠ CONSUMPTION

HISTORICAL ≠ CURRENT

CONSUMER REPLACEMENT ≠ GLOBAL SUPERSESSION

ASSET IDENTITY ≠ FILE PATH

ASSET IDENTITY ≠ GIT BLOB IDENTITY

ACCEPTED PROJECT ASSET ≠ AUTOMATIC CHARACTER CANON

Originating project ownership does not automatically imply permanent authority over every future cross-project lifecycle decision.

That authority question remains open at scale.

---

# 3. OBJECTS WITH DURABLE ROLES

The tested repository model contains:

1. REQUEST
2. TASK
3. CHARACTER STATE
4. ASSET RECORD
5. PROJECT / PANEL STATE
6. DECISION
7. LIFECYCLE DECISION
8. HANDOFF
9. PHYSICAL BINARY

These are separate durable roles. Do not collapse them into one generic registry without evidence.

---

# 4. RELATIONSHIPS

Confirmed relationships include:

REQUEST
→ TASK

TASK
→ CHARACTER

TASK
→ CANDIDATE ASSET

ASSET
→ ORIGIN

PROJECT/PANEL
→ DECISION

DECISION
→ ASSET

ASSET
→ CONSUMERS

ASSET
→ LIFECYCLE DECISIONS

ASSET
→ PHYSICAL BINARY

PROJECT/PANEL
→ HANDOFF

CHARACTER STATE ↔ ASSET

Important semantic boundaries remain in force:

- asset acceptance does not imply character canon;
- origin does not become consumption;
- consumption does not rewrite origin;
- consumer replacement does not become global asset replacement automatically.

---

# 5. TEST HISTORY — ARCHITECTURAL EVIDENCE

## TEST #5 — ASSET LIFECYCLE / REUSE REVOCATION

Result: PASS.

Proved:

- Asset can remain present after new reuse is stopped.
- Historical REUSABLE = YES and current REUSABLE = NO can coexist.
- Existing consumers remain valid historical consumers.
- Provenance is not rewritten.
- Character canon is not changed automatically.
- A focused lifecycle decision can record the change.
- A new consuming project can make its own local decision.

Important semantic clarification:

REUSABLE = NO in the tested scenario means:

"Do not select this asset for a new production consuming task."

It does not mean deleted, invalid, historically rejected, canonical, permanently forbidden, or globally revoked.

---

## TEST #6 — REUSE REVERSAL

Result: PASS.

Sequence:

REUSABLE = YES
→ NO
→ YES

The old lifecycle decision was not rewritten.

A separate reversal decision recorded the restoration.

A new consumer was able to use the asset after restoration.

Historical rejected use remained historical and was not automatically converted into acceptance.

---

## TEST #7 — MULTIPLE INDEPENDENT CONSUMERS

Result: PASS for the tested scope.

One asset was demonstrated with multiple independent consumers without requiring a consumer registry.

Consumer-local records and explicit relationships were sufficient for the known tested consumers.

Important limitation:

Exhaustive reverse discovery is not proven.

GitHub search previously returned zero results for some expected terms. This is evidence about discovery tooling, not proof that the data model is defective.

---

## TEST #8 — CONSUMER-SPECIFIC REPLACEMENT

Result: PASS.

Tested chain:

TEST_PROJECT_H / Panel 001
→ initial acceptance of Asset A
→ consumer-specific replacement
→ Asset B
→ current acceptance of Asset B

Asset A was not globally declared REPLACED or SUPERSEDED.

Asset A provenance remained unchanged.

Asset A REUSABLE state was not changed by the replacement.

Asset B is a separate asset record, not a version automatically derived from A.

---

## TEST #9 — PHYSICAL BINARY ASSET

Result: PASS.

A real Git-tracked PNG was linked from Asset B by an explicit repository path.

The test distinguished:

ASSET IDENTITY
≠ FILE PATH
≠ GIT BLOB / CONTENT IDENTITY

Same content under another path had the same Git blob SHA.

Changed content had a different Git blob SHA.

Neither event automatically created a new semantic Asset.

A missing physical binary did not destroy the Asset Record or its historical identity.

---

## TEST #10 — NEW-SISTER RECONSTRUCTION

Result: PASS — FOR TESTED SCOPE.

A new sister reconstructed the tested architecture repository-first using:

LIVING HANDOFF
+
EXPLICIT REPOSITORY EVIDENCE

She recovered the main objects, relationships, provenance, consumption, lifecycle, replacement, character canon boundary, physical binary relation, previous test results, and open questions.

Critical limitation:

EXHAUSTIVE REPOSITORY DISCOVERY was not proven.

The difficult part was discovery, not semantic reconstruction.

A known artifact plus explicit related paths was sufficient for the tested reconstruction.

Documentation gap discovered later:

A separate focused Test #10 handoff/result artifact was initially absent from main. This was later fixed and should remain part of the durable architecture documentation.

---

## TEST #11 — ARCHITECTURE FREEZE CANDIDATE

Result: PASS.

Tests #1–#10 were audited against repository evidence.

A minimal confirmed architecture core was identified.

The freeze is deliberately scoped.

Frozen:

- known tested rules;
- ownership boundaries;
- historical/current separation;
- lifecycle semantics already demonstrated;
- consumer-specific replacement semantics;
- asset/file/blob distinction;
- handoff reconstruction mechanism.

Not frozen:

- exhaustive discovery;
- arbitrary-scale reverse discovery;
- lifecycle governance at scale;
- global retirement/supersession;
- persistent content-ID policy;
- binary relocation policy before Test #12;
- many-binary scenarios;
- large-scale governance.

The freeze is a candidate, not a claim that the architecture is finished.

---

## TEST #12 — BINARY RELOCATION / CONTENT IDENTITY

Result: PASS.

Tested scenario:

same binary content
→ new repository path
→ same semantic asset

Asset:

HELGA-CROUCH-CANDIDATE-04

The physical binary moved from its original binary path to a relocated path while preserving the same content.

The Git blob identity remained the same:

62a5f8f47fec02344e5bf9061888262f677cf5d6

The semantic Asset ID did not change.

The asset record was updated to point to the new physical locator.

Provenance, consumers, lifecycle and character canon were not altered by the relocation.

Conclusion:

FILE PATH is a mutable locator.

ASSET IDENTITY is semantic and independent of the path.

Persistent content-ID metadata is still not proven necessary.

---

# 6. CURRENT CONFIRMED MODEL

For the tested scope, the durable model is:

REQUEST
→ TASK
→ CHARACTER
→ CANDIDATE ASSET
→ DECISION
→ PROJECT/PANEL STATE
→ HANDOFF

with cross-cutting relationships:

ASSET
→ ORIGIN
→ CONSUMERS
→ LIFECYCLE DECISIONS
→ PHYSICAL BINARY

and separate character canon state.

Historical records remain historical.

Current records describe current state.

Later decisions add facts rather than rewriting earlier facts.

---

# 7. LIFECYCLE MODEL

Observed vocabulary includes:

- GENERATED
- ACCEPTED_FOR_PROJECT
- CANONICAL_FOR_CHARACTER
- REUSABLE

The tested REUSABLE sequence is:

YES → NO → YES

Lifecycle decisions are separate records from the current asset state.

Do NOT invent these as current architecture merely because they are conceivable:

- ACTIVE
- INACTIVE
- RESTORED
- REVIVED
- RETIRED
- DEPRECATED
- REPLACED
- SUPERSEDED
- VALID_FROM
- VALID_TO

Those remain unproven unless a future test requires them.

---

# 8. REPLACEMENT MODEL

Current tested representation:

CONSUMER
→ INITIAL DECISION
→ ASSET A
→ REPLACEMENT DECISION
→ ASSET B
→ CURRENT DECISION

This is a consumer-local event/fact pattern.

Do not convert it into a global supersession model unless a real test demonstrates the need.

---

# 9. BINARY MODEL

Current tested model:

ASSET RECORD
→ explicit repository file path
→ physical Git-tracked binary

The binary is a physical representation associated with the asset.

The path is a locator.

The Git blob/content identity is storage-level identity.

These three concepts must not be conflated.

Test #12 additionally proved that relocation to a new path with identical content does not automatically create a new asset.

Still unresolved:

- when changed content should semantically create a new asset;
- multiple binaries per asset;
- multiple assets sharing one binary;
- external binary storage;
- persistent content-ID policy;
- relocation across repository boundaries.

---

# 10. DISCOVERABILITY BOUNDARY

Confirmed:

- explicit links reconstruct tested chains;
- production chains are reconstructable;
- cross-project consumer relationships are reconstructable for known records;
- lifecycle history is reconstructable;
- replacement history is reconstructable;
- asset-to-binary linkage is reconstructable;
- new-sister semantic reconstruction passed for tested scope.

Not proven:

- exhaustive repository inventory;
- arbitrary-scale reverse navigation;
- GitHub search completeness;
- discovery from a Git blob/content identity alone.

Do not respond to a search limitation by creating a registry automatically.

First test whether the existing repository model actually fails the required scenario.

---

# 11. NEGATIVE EVIDENCE — WHAT WE DID NOT NEED

The following were not required for the tested scenarios:

## Global asset registry

Not needed because known assets and consumers were represented through asset records and consumer-local decisions with explicit links.

## Consumer registry

Not needed for the tested known consumer set.

## Supersession registry

Not needed for consumer-specific replacement.

## Graph

Not needed because linked repository records expressed the tested relationships.

## Database

Not needed for the tested durable model.

## API

Not needed for the tested architecture.

## Synchronization layer

Not needed because records remain explicit and durable.

## Automatic propagation

Not needed; historical consumers remain historical and local decisions remain local.

## Automatic canonical promotion

Not needed; accepted project assets do not automatically become character canon.

## New global lifecycle vocabulary

Not needed for YES → NO → YES or tested replacement scenarios.

These are bounded negative findings, not eternal prohibitions.

---

# 12. OPEN QUESTIONS

The following remain open and must not be silently promoted to architecture rules:

1. Does lifecycle chronology remain readable after many sequential changes?
2. Does a long A → B → C → D replacement chain require a more explicit representation?
3. Is there a real scenario requiring consumer-specific replacement to coexist with global asset retirement/supersession?
4. Is a persistent content identifier ever needed for production asset records?
5. What exactly should happen when binary content changes but the semantic asset is intended to remain the same?
6. How should binary relocation across repository boundaries work?
7. How should multiple binaries per asset work?
8. How should multiple assets sharing one binary work?
9. How should reverse discovery work at significantly larger repository scale?
10. Who has authority for later cross-project lifecycle recommendations at scale?
11. Does the handoff remain readable after a much larger test history?

---

# 13. NOT PROVEN — DO NOT CLAIM

Do not claim any of the following as proven:

- content hash will never be needed;
- global supersession will never be needed;
- GitHub search is exhaustive;
- explicit links guarantee discovery at arbitrary scale;
- one binary path is sufficient for every future asset model;
- consumer replacement can never become global supersession;
- registry/database/graph infrastructure will never be needed.

Correct interpretation:

NO DEMONSTRATED NEED YET ≠ IMPOSSIBLE / NEVER NEEDED.

---

# 14. RECONSTRUCTION PROCEDURE FOR A NEW ARCHITECT SISTER

When arriving without chat memory:

### Step 1
Read this file completely.

### Step 2
Read:

`architecture/ARCHITECTURE_HANDOFF_TO_NEXT_ARCHITECT.md`

### Step 3
Read:

`architecture/ARCHITECTURE_PLAN_AND_CHECKPOINTS.md`

### Step 4
Read:

`architecture/ARCHITECTURE_CHANGES_AFTER_TESTS.md`

### Step 5
Inspect the focused handoffs and Test #5–#12 artifacts.

### Step 6
For any important claim, follow explicit repository paths to primary evidence.

### Step 7
Separate every conclusion into:

OBSERVED FACT
INFERENCE
HYPOTHESIS / OPEN QUESTION

### Step 8
Do not silently turn an inference into an architectural rule.

### Step 9
Before changing architecture, test the smallest scenario that could falsify the current rule.

### Step 10
Write results back into durable records after every test or material architectural conclusion.

---

# 15. ARCHITECTURE CHANGE DISCIPLINE

When a test is performed:

1. Restore/reconstruct current architecture first.
2. Define exactly one unknown boundary.
3. Run the smallest meaningful experiment.
4. Preserve historical records.
5. Record observed facts.
6. Record inferences separately.
7. Record hypotheses separately.
8. Decide PASS / FAIL / PASS FOR TESTED SCOPE.
9. Update living handoff.
10. Update plan/checkpoints.
11. Update changes-after-tests.
12. Add a focused handoff when transfer value warrants it.
13. Update handoff INDEX when a new handoff is created.
14. Do not add new architecture unless evidence requires it.

A test result must not rewrite prior test history.

---

# 16. CURRENT FREEZE STATUS

ARCHITECTURE FREEZE CANDIDATE: READY

The candidate freeze covers only the confirmed core through Test #12.

It does NOT freeze unresolved scale-dependent or storage-dependent questions.

The freeze is:

STABLE
BUT
REVERSIBLE BY NEW EVIDENCE.

---

# 17. NEXT TEST STATUS

No Test #13 is required automatically.

If experimentation continues, select ONE existing open boundary.

Previously identified candidates:

### Candidate A — MANY SEQUENTIAL REPLACEMENTS

Test:

A → B → C → D → E

for one consumer.

Goal:

Determine whether current replacement records remain readable and reconstructable without a new abstraction.

### Candidate B — CROSS-REPOSITORY / EXTERNAL BINARY RELOCATION

Goal:

Test what happens when a binary moves beyond the current repository storage boundary.

Do not combine these tests.

Prefer the smallest test capable of falsifying the current model.

---

# 18. KEY ARTIFACTS

Primary architecture documents:

`architecture/ARCHITECTURE_HANDOFF_TO_NEXT_ARCHITECT.md`

`architecture/ARCHITECTURE_PLAN_AND_CHECKPOINTS.md`

`architecture/ARCHITECTURE_CHANGES_AFTER_TESTS.md`

Important test evidence includes the WITCH origin chain, Helga asset records, project/panel decisions, lifecycle decisions, replacement decisions, focused handoffs, and the physical binary records.

Current known Helga asset identities include:

- `HELGA-CROUCH-CANDIDATE-03`
- `HELGA-CROUCH-CANDIDATE-04`

The physical binary tested in Tests #9 and #12 is currently associated with the relocated repository path documented by the Test #12 artifacts.

---

# 19. FINAL ARCHITECT BACKUP STATEMENT

This file is a backup of the current architectural knowledge needed to continue the Dragon Test Chest architecture work without relying on the previous chat session.

It is intentionally more redundant than the normal living handoff.

The backup should preserve:

- what is known;
- why it is known;
- what has been tested;
- what was deliberately NOT added;
- what remains uncertain;
- how a new architect should reconstruct the model;
- where the next experiments may begin.

The repository remains the durable source of truth for architecture work.

The backup itself is not a replacement for primary evidence. When claims matter, follow them back to the underlying repository artifacts and tests.

==================================================
END ARCHITECT BACKUP FULL
==================================================
