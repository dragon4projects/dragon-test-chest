# ARCHITECTURE HANDOFF TO NEXT ARCHITECT

Status: LIVING HANDOFF — update after every architecture test, test-derived conclusion, or new material decision.
Repository: dragon4projects/dragon-test-chest
Purpose: allow the next architecture sister to continue the experiment from GitHub without relying on chat memory.

## 1. Mission

This repository is an architecture laboratory, not a production repository.

The task is to discover the smallest durable project-memory architecture that lets rotating sisters reconstruct and continue real work.

Do NOT design a beautiful final system in advance. Each architectural rule must be earned by a real test or explicitly marked as a hypothesis.

Working model:
- Chat = working memory.
- GitHub = durable memory.
- Handoff = transfer mechanism.
- Tests = verification.

## 2. Candidate architecture freeze after Test #11

Test #11 audited the accumulated evidence from Tests #1–#10.

### Candidate freeze verdict

**FREEZE CANDIDATE IS READY**

This is a candidate freeze of the **minimal confirmed core only**. It is not a claim that scale behavior, exhaustive discovery, binary governance, global supersession, or other open questions are solved.

The freeze is explicitly reversible by new evidence.

### Confirmed core

1. Durable architectural facts can be represented as explicit repository records connected by ordinary links/references.
2. The tested production chain can be represented as:
   REQUEST → TASK → CHARACTER → CANDIDATE ASSET → DECISION → PROJECT/PANEL STATE → HANDOFF
   within the tested scenarios.
3. Asset identity is distinct from character state, panel decision, provenance/origin, consumer use, physical file path, and Git blob/content identity.
4. Current state and historical fact must remain separable. Current values may change while earlier decisions remain intact.
5. Asset reuse lifecycle is a current recommendation/fact distinct from historical consumer decisions.
6. A consumer-specific replacement is a local decision/fact, not automatically a global asset supersession or lifecycle state.
7. A real Git-tracked binary can be attached to an asset record through an explicit repository path for the tested one-asset/one-primary-binary case.
8. Handoffs transfer context/provenance/decisions/open state; they do not silently transfer authority.
9. The tested scenarios did not require a global asset registry, consumer registry, supersession registry, graph, database, API, synchronization, automatic propagation, automatic canonical promotion, or new global lifecycle vocabulary.

### Explicit scope

The above rules are frozen only to the scenarios actually evidenced by Tests #1–#12. They are not universal claims about arbitrary scale, storage systems, governance, or future semantics.

### Test #10 note

Test #10 was reported as **PASS — FOR TESTED SCOPE**: a new sister reconstructed the tested architecture from the living handoff plus explicit repository evidence.

A dedicated Test #10 focused handoff has now been added to the repository to close the documentation gap identified by Test #11. It remains a bounded execution record and does not claim exhaustive discovery.

## 3. Current architectural chain

The candidate-confirmed working chain is:

REQUEST → TASK → CHARACTER → CANDIDATE ASSET → DECISION → PROJECT/PANEL STATE → HANDOFF

A stable task ID connects the relevant records in the tested scenarios.

Reverse navigation is supported by explicit record links in the tested scenarios. Exhaustive repository discovery is not proven.

## 4. Confirmed ownership boundaries

Confirmed by repository scenarios:

- Asset is not character state.
- Panel decision is not character canon.
- Accepted asset is not automatically canonical character master.
- Origin is not consumption.
- Handoff transfers context/provenance/decisions/open state; authority does not travel automatically with the message.
- Historical facts must not be rewritten merely because current state changes.
- Project-specific decisions must not silently become global character canon.
- A lifecycle change must not silently rewrite old consumers.
- A consumer-specific replacement does not automatically become a global asset lifecycle state.
- Asset identity is not physical file path.
- Asset identity is not Git blob/content identity.

## 5. Asset state semantics currently confirmed

These statements are distinct in the tested scenarios:

GENERATED
ACCEPTED_FOR_PROJECT
CANONICAL_FOR_CHARACTER
REUSABLE

The tested lifecycle sequence includes:

PAST: REUSABLE=YES
THEN: REUSABLE=NO
CURRENT: REUSABLE=YES

For Test #5, REUSABLE=NO meant: “Do not select this asset for a new production consuming task.”

For Test #6, REUSABLE=YES means: “The asset may be considered for a new production consuming task.”

REUSABLE does NOT by itself mean deleted, invalid, canonical, historical consumers were wrong, old decisions reopened, or originating authority changed.

## 6. Test #7 — MULTIPLE INDEPENDENT CONSUMERS — PARTIAL

Seven known consumer scenarios were represented for HELGA-CROUCH-CANDIDATE-03 without duplicate asset records.

Observed:
- each consumer has request → panel state → decision → existing asset;
- asset Related records plus explicit consumer links reconstruct the tested set;
- the available GitHub connector search returned zero results for the tested asset and broad terms.

Conclusion:
The tested record model represents the known consumers, but exhaustive search adequacy remains unproven.

No consumer registry, global index, graph, API, synchronization, or richer lifecycle vocabulary was justified.

## 7. Test #8 — REPLACEMENT / SUPERSESSION — PASS FOR TESTED SCENARIO

TEST_PROJECT_H / Panel 001 first accepted HELGA-CROUCH-CANDIDATE-03. A later consumer-specific review accepted HELGA-CROUCH-CANDIDATE-04 instead.

The old decision remained intact. The replacement reason was recorded separately. Both assets retain their own provenance.

The replacement is consumer-specific. Asset A was not globally marked REPLACED/SUPERSEDED and its REUSABLE state was not changed by the replacement.

No global supersession entity was justified.

## 8. Test #9 — PHYSICAL BINARY ASSET — PASS FOR TESTED SCENARIO

HELGA-CROUCH-CANDIDATE-04 was given a real Git-tracked 1×1 PNG.

Observed:
- asset record → explicit physical path → real binary is reconstructable;
- identical content at another path shared the Git blob SHA and did not create a second asset automatically;
- changed binary content did not automatically create a second asset;
- a missing current file did not erase the asset record;
- asset identity, file path, and Git blob/content identity remained distinct.

Minimal rule:
For the tested one-asset/one-primary-binary case, an explicit repository path is sufficient.

This does not establish a universal content-identifier policy.

## 9. Test #10 — NEW-SISTER RECONSTRUCTION

Execution result: **PASS — FOR TESTED SCOPE**.

The reported reconstruction succeeded using:
LIVING HANDOFF + EXPLICIT REPOSITORY EVIDENCE.

The result does not prove exhaustive repository discovery. A dedicated focused handoff now exists and records the bounded execution result.

No registry was added as a response to the discovery limitation.

## 10. Test #11 — ARCHITECTURE FREEZE CANDIDATE

Execution result: **PASS — FREEZE CANDIDATE IS READY.**

Test #11 audited the accumulated evidence and separated confirmed architecture from open/scaled questions. The freeze is stable but reversible by new evidence.

## 11. Test #12 — BINARY RELOCATION / CONTENT IDENTITY

Execution result: **PASS — FOR TESTED REPOSITORY-LOCAL SCENARIO.**

### Scenario

The primary binary for HELGA-CROUCH-CANDIDATE-04 was moved from:

`assets/characters/helga/binary/HELGA-CROUCH-CANDIDATE-04.png`

to:

`assets/characters/helga/binary/relocated/HELGA-CROUCH-CANDIDATE-04.png`

The destination contains exactly the same binary content.

Both paths resolve to Git blob SHA:

`62a5f8f47fec02344e5bf9061888262f677cf5d6`

The asset record was explicitly updated to the new path, and the old path was removed from the test branch.

### Observed

- Asset ID remained HELGA-CROUCH-CANDIDATE-04.
- No new asset record was required.
- Provenance remained unchanged.
- Consumer/replacement history remained unchanged.
- REUSABLE remained unchanged.
- Character canon remained unchanged.
- File path changed.
- Git blob/content identity did not change.

### Rule strengthened

For the tested repository-local relocation scenario:

**FILE PATH is a mutable locator, not the semantic Asset identity.**

Same binary content moved to a new repository path can remain the same Asset when the durable asset record is explicitly updated to the new locator.

### What was NOT added

No relocation entity, binary registry, persistent content-ID field, version entity, synchronization layer, or global lifecycle status was needed.

### Boundary

This does not prove policy for:
- modified content;
- multiple binaries per asset;
- multiple assets sharing one binary;
- cross-repository relocation;
- external storage;
- persistent content identifiers;
- large-scale binary governance.

Those remain open.

## 12. Current confirmed core after Test #12

The previous freeze remains intact and gains one bounded clarification:

**Asset identity survives repository-local relocation of identical binary content; file path is a mutable locator.**

This is an extension of the already-confirmed identity boundary, not a new global architecture layer.

## 13. Not frozen

The following remain deliberately outside the freeze:

- exhaustive repository discovery;
- repository search adequacy at larger scale;
- lifecycle governance/authority at larger scale;
- chronology/navigation of many lifecycle changes;
- many sequential replacements;
- global asset retirement/supersession semantics;
- persistent content-identifier policy;
- many binaries per asset;
- many assets sharing one binary;
- external binary storage;
- cross-repository binary relocation;
- large-scale binary governance;
- any untested automatic propagation or synchronization behavior.

These are boundaries, not failures.

## 14. Open questions

- Who owns later cross-project lifecycle recommendations at scale?
- Does chronology remain readable after many lifecycle changes?
- Do many sequential replacements justify a more explicit replacement representation?
- Will a future scenario require a distinction between consumer-specific replacement and global asset retirement/supersession?
- Should production asset records persist a content identifier across relocation or storage boundaries?
- How should multiple-binary relationships be represented?
- How should cross-repository or external-storage relocation be represented?
- Does reverse discovery remain usable when the repository becomes much larger?

## 15. Not proven

The following must NOT be used as architecture rules:

- “A content hash is never needed.”
- “A global supersession state will never be needed.”
- “The existing search interface is exhaustive.”
- “Explicit links guarantee discoverability at arbitrary scale.”
- “One binary path is sufficient for every future asset model.”
- “Consumer replacement can never become global supersession.”
- “No registry will ever be needed.”
- “Repository-local relocation semantics automatically generalize to external storage.”

Absence of a demonstrated need is not proof of impossibility or permanent exclusion.

## 16. Negative evidence

Tests repeatedly exercised scenarios that could have motivated additional global architecture and did not require it.

### Global asset registry
WHAT WAS TESTED: cross-project reuse and multiple independent consumers.
WHAT ACTUALLY HAPPENED: existing asset records plus explicit consumer-local decisions/links represented the tested scenarios.
CONCLUSION: not justified for the tested scope.

### Consumer registry
WHAT WAS TESTED: seven known consumers of one asset.
WHAT ACTUALLY HAPPENED: consumer-local records and asset Related links represented the known set.
CONCLUSION: not justified; exhaustive discovery remains open.

### Supersession registry / global replacement state
WHAT WAS TESTED: one consumer moving from Asset A to Asset B.
WHAT ACTUALLY HAPPENED: a focused replacement decision preserved both historical and current consumption.
CONCLUSION: not justified for consumer-specific replacement.

### Graph / database / API / synchronization / automatic propagation
WHAT WAS TESTED: production chain, cross-project reuse, lifecycle reversal, multiple consumers, replacement, physical binary, repository-local binary relocation.
WHAT ACTUALLY HAPPENED: ordinary repository records and links represented the tested facts.
CONCLUSION: not justified for the tested scope.

### Binary relocation layer
WHAT WAS TESTED: same binary content moved to a new repository path.
WHAT ACTUALLY HAPPENED: asset record + updated path + existing Git content identity were sufficient.
CONCLUSION: no relocation entity or persistent content-ID layer was justified for this repository-local scenario.

### Automatic canonical promotion
WHAT WAS TESTED: project/panel acceptance of Helga assets.
WHAT ACTUALLY HAPPENED: accepted assets remained non-canonical unless a separate character-level fact existed.
CONCLUSION: not justified.

### New global lifecycle vocabulary
WHAT WAS TESTED: YES → NO → YES reuse lifecycle and consumer-specific replacement.
WHAT ACTUALLY HAPPENED: the existing lifecycle/current-state plus focused decisions preserved history.
CONCLUSION: not justified.

## 17. Discoverability and binary boundary

Confirmed:
- explicit record links support reconstruction of tested production, reuse, lifecycle, replacement, and binary scenarios;
- a new sister can reconstruct the tested model within the reported Test #10 scope using handoff + repository evidence;
- a repository-local binary can move paths without changing Asset ID when content remains identical and the asset record is updated.

Not confirmed:
- exhaustive repository search;
- arbitrary-scale reverse discovery;
- discovery from Git blob/content identity alone;
- cross-repository or external-storage relocation;
- universal content-ID policy.

Important:
Test #7's zero-result search observation is evidence about the tested discovery interface, not proof that the underlying data model is defective.

## 18. Freeze discipline

The candidate freeze is:

STABLE
BUT
REVERSIBLE BY NEW EVIDENCE.

A future test may add, split, weaken, or replace a rule if a real scenario demonstrates that the current rule is insufficient.

Historical tests must not be rewritten to fit the freeze.

## 19. Current status at handoff

Tests completed:
- Test 1 — repository-first continuity
- Test 2 — live micro-scenario
- Test 3 — actual production chain
- Test 4 — cross-project reuse
- Test 5 — asset lifecycle / reuse revocation
- Test 6 — asset lifecycle / reuse reversal
- Test 7 — multiple independent consumers
- Test 8 — replacement / supersession
- Test 9 — physical binary asset
- Test 10 — new-sister reconstruction, PASS FOR TESTED SCOPE
- Test 11 — architecture freeze candidate, READY
- Test 12 — binary relocation / content identity, PASS FOR TESTED REPOSITORY-LOCAL SCENARIO

Immediate next action:
No broad Test #13 is justified automatically. If further validation is desired, choose exactly one existing open boundary. The smallest remaining binary boundary is cross-repository/external-storage relocation; the smallest structural boundary is many sequential replacements.


## 2026-10-07 — Test #13 — Many sequential replacements

### Result
**PASS — FOR TESTED SCOPE.**

### Scenario
A single consumer-context, TEST_PROJECT_I / Panel 001, was exercised through four sequential consumer-specific replacements:

A → B → C → D → E

using five separate asset records, one initial decision, four replacement decisions, one current decision, one panel state, and one request/task record.

### Observed
- All five asset records remain durable.
- The initial decision remains historical.
- Each replacement is a separate durable decision with explicit old/new asset IDs and a consumer-specific reason.
- Panel state and current decision identify E as current.
- The chain can be reconstructed from the request, panel state, decision records, asset records, and explicit old/new links.
- All five assets retain their own provenance records.
- REUSABLE remained YES for all five test assets.
- No asset was marked globally REPLACED or SUPERSEDED.
- No character canon was changed.
- No other consumer context was changed.

### Architecture result
The existing record model survived the longer replacement chain without a new replacement registry, lineage entity, version field, graph, database, synchronization mechanism, or global supersession state.

### Important boundary
This is a five-asset / four-replacement / one-consumer test only. It does not prove arbitrary-scale chronology, exhaustive discovery, global retirement semantics, or that a longer or differently shaped replacement history can never create pressure for a new abstraction.

### Reconstruction result
A repository-first reconstruction starting from the Test #13 request and following its explicit links recovered the complete A → B → C → D → E chain and the current E state.
