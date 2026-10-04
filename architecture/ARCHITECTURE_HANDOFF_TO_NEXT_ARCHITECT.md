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

The above rules are frozen only to the scenarios actually evidenced by Tests #1–#10. They are not universal claims about arbitrary scale, storage systems, governance, or future semantics.

### Test #10 note

Test #10 was reported by the test execution as **PASS — FOR TESTED SCOPE**: a new sister reconstructed the tested architecture from the living handoff plus explicit repository evidence.

The current main branch does not contain a separate Test #10 focused handoff/result artifact. Therefore that result is accepted here as the execution result, but its detailed reconstruction procedure is not independently re-auditable from a dedicated Test #10 document. This is a documentation gap, not a reason to add new architecture.

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

The result does not prove exhaustive repository discovery. The main-branch repository currently lacks a dedicated Test #10 focused handoff/result document, so future sisters should treat the execution result as bounded evidence and the absence of that artifact as a documentation gap.

No registry was added as a response to this gap.

## 10. Not frozen

The following are deliberately outside the candidate freeze:

- exhaustive repository discovery;
- repository search adequacy at larger scale;
- lifecycle governance/authority at larger scale;
- chronology/navigation of many lifecycle changes;
- many sequential replacements;
- global asset retirement/supersession semantics;
- persistent content-identifier policy;
- binary relocation semantics;
- many binaries per asset;
- many assets sharing one binary;
- external binary storage;
- large-scale binary governance;
- any untested automatic propagation or synchronization behavior.

These are boundaries, not failures.

## 11. Open questions

- Who owns later cross-project lifecycle recommendations at scale?
- Does chronology remain readable after many lifecycle changes?
- Do many sequential replacements justify a more explicit replacement representation?
- Will a future scenario require a distinction between consumer-specific replacement and global asset retirement/supersession?
- Should production asset records persist a content identifier across relocation or storage boundaries?
- How should relocation and multiple-binary relationships be represented?
- Does reverse discovery remain usable when the repository becomes much larger?

## 12. Not proven

The following must NOT be used as architecture rules:

- “A content hash is never needed.”
- “A global supersession state will never be needed.”
- “The existing search interface is exhaustive.”
- “Explicit links guarantee discoverability at arbitrary scale.”
- “One binary path is sufficient for every future asset model.”
- “Consumer replacement can never become global supersession.”
- “No registry will ever be needed.”

Absence of a demonstrated need is not proof of impossibility or permanent exclusion.

## 13. Negative evidence

Tests repeatedly exercised scenarios that could have motivated additional global architecture and did not require it.

### Global asset registry
WHAT WAS TESTED: cross-project reuse and multiple independent consumers.
WHAT WOULD HAVE REQUIRED IT: a demonstrated need for a separate global asset index to express or preserve the tested consumers.
WHAT ACTUALLY HAPPENED: existing asset records plus explicit consumer-local decisions/links represented the tested scenarios.
CONCLUSION: not justified for the tested scope.

### Consumer registry
WHAT WAS TESTED: seven known consumers of one asset.
WHAT WOULD HAVE REQUIRED IT: consumer relationships becoming impossible to represent without a global registry.
WHAT ACTUALLY HAPPENED: consumer-local records and asset Related links represented the known set.
CONCLUSION: not justified; exhaustive discovery remains open.

### Supersession registry / global replacement state
WHAT WAS TESTED: one consumer moving from Asset A to Asset B.
WHAT WOULD HAVE REQUIRED IT: a proven need for asset-global supersession semantics.
WHAT ACTUALLY HAPPENED: a focused replacement decision preserved both historical and current consumption.
CONCLUSION: not justified for consumer-specific replacement.

### Graph / database / API / synchronization / automatic propagation
WHAT WAS TESTED: production chain, cross-project reuse, lifecycle reversal, multiple consumers, replacement, physical binary.
WHAT WOULD HAVE REQUIRED IT: failure of ordinary linked repository records to preserve the tested facts.
WHAT ACTUALLY HAPPENED: the tested scenarios were representable with ordinary repository records and links.
CONCLUSION: not justified for the tested scope.

### Automatic canonical promotion
WHAT WAS TESTED: project/panel acceptance of Helga assets.
WHAT WOULD HAVE REQUIRED IT: evidence that panel acceptance must change character canon automatically.
WHAT ACTUALLY HAPPENED: accepted assets remained non-canonical unless a separate character-level fact existed.
CONCLUSION: not justified.

### New global lifecycle vocabulary
WHAT WAS TESTED: YES → NO → YES reuse lifecycle and consumer-specific replacement.
WHAT WOULD HAVE REQUIRED IT: a failure of existing lifecycle/current-state plus focused decisions to preserve history.
WHAT ACTUALLY HAPPENED: the existing model preserved both current and historical states.
CONCLUSION: not justified.

## 14. Discoverability boundary

Confirmed:
- explicit record links support reconstruction of the tested production, reuse, lifecycle, replacement, and binary scenarios;
- a new sister can reconstruct the tested model within the reported Test #10 scope using handoff + repository evidence.

Not confirmed:
- exhaustive repository search;
- arbitrary-scale reverse discovery;
- discovery from Git blob/content identity alone;
- guaranteed search-interface completeness.

Important:
Test #7's zero-result search observation is evidence about the tested discovery interface, not proof that the underlying data model is defective.

## 15. Freeze discipline

The candidate freeze is:

STABLE
BUT
REVERSIBLE BY NEW EVIDENCE.

A future test may add, split, weaken, or replace a rule if a real scenario demonstrates that the current rule is insufficient.

Historical tests must not be rewritten to fit the freeze.

## 16. Current status at handoff

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

Immediate next action:
No large architecture test is justified by Test #11. If further validation is desired, run the smallest open-boundary test only.