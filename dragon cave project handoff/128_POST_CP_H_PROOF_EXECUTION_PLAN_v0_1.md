# DRAGON HOUSE — POST-CP_H PROOF EXECUTION PLAN v0.1

**Date:** 2026-10-03  
**Author:** Current Architect successor  
**Candidate:** `HYBRID_PHYSICAL_CANDIDATE_001_REV_B`  
**Status:** `PREPARED / DO NOT EXECUTE BEFORE CP_H FREEZE-READINESS PASS`  
**Canonical impact:** none by itself

## 0. Purpose

Prepare the exact next execution sequence after CP_H without changing the frozen candidate and without promoting any runtime/QA state by implication.

Current frozen Architecture truth:

```text
CP_B = PASS_INTERIOR_STAGE
CP_C = PASS_INTERIOR_STAGE
CP_D = PASS_INTERIOR_STAGE
CP_E = PASS_INTERIOR_STAGE
CP_F = PASS_INTERIOR_STAGE
CP_G = PASS_INTERIOR_STAGE

CP_H = ARCHITECTURE-SIDE FROZEN / AWAITING INTERIOR FREEZE-READINESS REVIEW

S1-S7 = NOT_RUN
P1-P10 = NOT_RUN
runtime occupancy switching = NOT_RUN
runtime resident/pet traversal = NOT_RUN
runtime follow/privacy enforcement = NOT_RUN
independent QA = NOT_RUN
MASTER_SHELL_v1 = NOT_LOCKED
```

Immutable freeze package:

```text
CP_H_FREEZE_PACKAGE_HYBRID_PHYSICAL_CANDIDATE_001_REVB_v0_1.zip
SHA256 7487dc95507b9852396006d0eed2f38dfdf86480b51919f80b8d9e5cd6b61ddb
```

No file in this plan modifies that package.

---

## 1. Reconciliation with older proof-entry documents

Files 54/55/56 remain authoritative for proof semantics, evidence discipline and result vocabulary.

However, their historical `Hard blockers now` / readiness maps were written before the later CP_D–CP_G authoring and closure.

The following candidate-stage inputs now exist and must be used rather than treating the old missing-input statements as current truth:

### Dragon occupancy / anchors
```text
DRAGON_TECH_OCCUPANCY_PACKAGE_v0_1
108_HYBRID_PHYSICAL_CANDIDATE_001_REVB_CP_F_DRAGON_ANCHORS.json
110_CANDIDATE001_REVB_CP_F_DRAGON_ANCHOR_PARAMETER_LEDGER_v0_1.md
```

### Physical vertical connectors
```text
104_HYBRID_PHYSICAL_CANDIDATE_001_REVB_CP_E_VERTICAL_ACCESS_REVB.json
105_CANDIDATE001_REVB_CP_E_REVB_PARAMETER_LEDGER_AMENDMENT_v0_1.md
```

### Service / growth layer
```text
93_HYBRID_PHYSICAL_CANDIDATE_001_REVB_CP_D_SERVICE_GROWTH_REVA.json
94_CANDIDATE001_REVB_CP_D_REVA_PARAMETER_LEDGER_AMENDMENT_v0_1.md
```

### Camera / privacy candidate config
```text
122_HYBRID_PHYSICAL_CANDIDATE_001_REVB_CP_G_CAMERA_PRIVACY_APPLIED.json
123_CANDIDATE001_REVB_CP_G_RECOVERY_SEAM_PARAMETER_LEDGER_v0_1.md
```

This does NOT mean the runtime proofs are already satisfied.

Correct distinction:

```text
CANDIDATE-SIDE INPUT PRESENT != RUNTIME IMPLEMENTED
RUNTIME IMPLEMENTED != PROOF PASS
PROOF EXECUTED != INDEPENDENT QA ACCEPTED
INDIVIDUAL PASSES != MASTER_SHELL_v1 LOCK
```

---

## 2. Release gate

No local Hybrid proof run should start until:

```text
[ ] Interior successor returns CP_H freeze-readiness PASS
[ ] Dragon physically relays the frozen package to the local Godot Inbox
[ ] Godot returns READ receipt with exact ZIP SHA256
[ ] implementation branch records the frozen candidate identity
```

If CP_H review returns a bounded correction, freeze v0.1 is preserved historically and a revised freeze package must be created before runtime work.

---

## 3. Local implementation phase — Godot

Godot is the implementation executor, not the proof authority.

Required first action after local receipt:

```text
VERIFY freeze ZIP SHA256
VERIFY internal SHA256SUMS
RECORD engine/runtime version
CREATE implementation branch tied to frozen REV_B identity
DO NOT EDIT freeze package
```

Implement the frozen candidate in layers sufficient to execute proofs, while retaining source/candidate identities in logs.

Do not redesign the House during implementation.

If implementation reveals a true geometry/parameter conflict:

```text
STOP
RETURN exact failure
DO NOT locally repair frozen Architecture truth
```

A required candidate correction returns to Architecture and creates a new candidate/freeze revision.

---

## 4. PHASE C — S1 → S2 → S3

### S1 — HOME_STATIC domestic occupancy

Use:

```text
DRAGON_HOME_STATIC_PROXY_v01
ANCHOR_DRAGON_HOME_STATIC_01
COMMON_SOCIAL_01
DRAGON_HOME_BERTH_01
accepted Common ordinary-life loads
resident bypass
pet load
service relation
```

Execute absent/present states without changing furniture.

Required runtime evidence remains exactly the File56 / File45 S1 evidence classes.

Cross-cut camera cases:

```text
P1
P6
P9 where applicable
```

No S1 PASS without real resident/pet route evidence.

### S2 — WORK_STATIC real-work occupancy

Use:

```text
DRAGON_WORK_STATIC_PROXY_v01
ANCHOR_DRAGON_WORK_STATIC_01
WORK_STUDY_01
DRAGON_WORK_BAY_01
canonical desk field
persistent WIP
auxiliary station
storage / ash-waste support
Work service relation
```

No magical cleanup.
No furniture movement between absent/present states.

Cross-cut camera cases:

```text
P1
P7
P9 where applicable
```

### S3 — Arrival / voluntary social contact

Test:

```text
Entry -> Arrival
Arrival partial reveal of Common
Arrival -> resident bypass
receiving/luggage load
service relation
```

Hard semantic requirement:

```text
COMMON IS A DESTINATION, NOT COMPULSORY TRANSIT
```

Cross-cut:

```text
P1 where applicable
```

---

## 5. PHASE D — S4 → S5 → S6

### S4 — Deep Private future-growth

Use the existing frozen identities:

```text
PRIVATE_APPROACH_01
PRIVATE_THRESHOLD_CHAMBER_01
DEEP_PRIVATE_01
FUTURE_PRIVATE_SOCKET_A
FUTURE_PRIVATE_SOCKET_B
```

Create only an explicitly hypothetical proof layer for future branch testing.

Do not invent:

```text
owner
room interior
decor
relationship state
permission
occupancy
```

Deep Private must remain terminal before and after hypothetical expansion.

Cross-cut:

```text
P2
P3
P4
P8
P10 where applicable
```

### S5 — Residential redundancy / growth

Use frozen CP_E connector geometry:

```text
VERTICAL_ACCESS_SOCIAL_01
VERTICAL_ACCESS_WORK_01
VERTICAL_ACCESS_QUIET_01
```

and preserve:

```text
FUTURE_LOOP_SOCKET_A
FUTURE_LOOP_SOCKET_B
FUTURE_RISER_SOCKET_01
FUTURE_RISER_SOCKET_02
RESIDENT_TERRACE_FUTURE_FIELD_01
```

Proof must include one current access-node-disabled case and two future expansion layers.

No future socket may be consumed as decor/storage just to make the current build easier.

Cross-cut:

```text
P5
P8
P9 where relevant
```

### S6 — Service flow

Trace independently:

```text
Arrival <-> service
Work <-> service
Quiet/Rest edge <-> service
Artifact <-> service
Residential cluster <-> service
```

Preserve:

```text
SERVICE_COMMON_CELL_01 = DOES NOT EXIST
```

Clean WAIT/RETRY is an acceptable implementation result where immediate coexistence is impossible.

Service may not require:

```text
Common transit
private-room entry
Dragon movement
room reset
unauthorized meaningful-object cleanup
```

---

## 6. PHASE E — S7 + P1–P10

S7 uses the same implemented frozen candidate.

Do not create a separate camera-friendly shell.

Required spaces:

```text
Arrival
Common
Work
Rest
Artifact/Memory
Deep Private
one residential cluster
```

Execute P1–P10 according to File55.

Critical frozen CP_G semantics include:

```text
CAM_REC_COMMON_FIN_01
CAM_REC_PRIVATE_RETURN_01
CAM_REC_VA_SOCIAL_01
CAM_REC_VA_WORK_01
CAM_REC_VA_QUIET_01
CAM_REC_DRAGON_HOME_01
CAM_REC_DRAGON_WORK_01
```

Hard rules:

```text
PRESENTATION CANNOT REPAIR GEOMETRY
CAMERA CANNOT CREATE PERMISSION
CAMERA CANNOT MOVE / SHRINK / FADE DRAGON
NOT VISIBLE != ABSENT
FOLLOW != ACCESS
ZOOM != ACCESS
TECHNICAL ACCESS != CONSENT
```

Temporal proofs require trace/video/log evidence; a still frame is insufficient.

---

## 7. Evidence packet discipline

Every S/P execution packet must use the File45 shape and include:

```text
proof_id
candidate identity/hash
freeze ZIP SHA256
source identities
parameter-ledger identity
engine/runtime version
executor
preconditions
run timestamp
logs/captures/traces
observed result
limitations
PASS / FAIL / BLOCKED
```

Allowed proof results remain:

```text
PASS
FAIL
BLOCKED_MISSING_SOURCE
BLOCKED_MISSING_GEOMETRY
BLOCKED_MISSING_ANCHOR
BLOCKED_MISSING_ACTOR_ENVELOPE
BLOCKED_IMPLEMENTATION
NOT_RUN
```

Do not use `looks okay`, `probably works`, or equivalent soft states.

---

## 8. Independent QA — Nika

Nika receives the exact frozen candidate identity plus Godot's returned evidence only after Dragon relays it.

Nika:

```text
does not silently repair Godot work
checks candidate/hash identity
reproduces proof steps where possible
checks evidence completeness
looks for false-success / presentation cheating
tests adversarial/boundary cases
returns PASS / FAIL / BLOCKED + limitations
```

Cloud publication is not local delivery.

Routing states remain:

```text
CREATED_CLOUD
EXPORTED_FOR_LOCAL_DELIVERY
PLACED_BY_DRAGON_IN_LOCAL_INBOX
READ_BY_LOCAL_AGENT
APPLIED_BY_LOCAL_AGENT
RETURNED_TO_DRAGON
RELAYED_BACK_TO_CLOUD
```

---

## 9. Master-shell boundary

Even if all individual S/P proofs pass:

```text
MASTER_SHELL_v1 != AUTOMATICALLY LOCKED
```

After proof execution + independent QA, Architecture performs an explicit unresolved-item review.

Only then may Architecture/Dragon issue an explicit Master Shell lock disposition.

---

## 10. Immediate cursor

```text
NOW:
wait only for bounded Interior CP_H freeze-readiness disposition

ON PASS:
prepare/export local Godot execution handoff tied to freeze ZIP SHA256

DO NOT:
change REV_B
reopen CP_B-G without concrete conflict
claim any S/P runtime result
claim local delivery before Dragon courier
claim MASTER_SHELL_v1 lock
```

— Current Architect successor