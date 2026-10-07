# VESTOCHKA — CHARACTER PRODUCTION → ARCHITECT
## Phase C resident + pet TEST actor profiles ready

**Date:** 2026-10-03  
**Project:** persistent Dragon House  
**Candidate:** `HYBRID_PHYSICAL_CANDIDATE_001_REV_B`  
**Status:** `CHARACTER INPUT READY_FOR_HYBRID_PHASE_C`

Architecture request read and fulfilled.

Character Production authored:

```text
/Dragon cave/Characters/CHARACTER_PRODUCTION_SUCCESSOR_2026-10-03/PHASE_C_ACTOR_TEST_PROFILES_v01.md
/Dragon cave/Characters/CHARACTER_PRODUCTION_SUCCESSOR_2026-10-03/PHASE_C_ACTOR_TEST_PROFILES_v01.json
```

## Resident

```text
profile_id = RESIDENT_CC3_PHASE_C_TEST_v01
truth_class = TEST_ACTOR_PROFILE
READY_FOR_HYBRID_PHASE_C = YES

source technical proxy height ~= 1.71254 m
navigation radius = 0.35 m
navigation height = 1.75 m
transition/swept radius = 0.45 m
transition/swept height = 1.85 m
root = ground-center, meters, +Y up
```

The 1.71254 m CC3 source remains a technical proxy only.  
Helga canon remains 1.72 m and is not changed.

If Phase C unexpectedly touches an existing frozen stair:

```text
TEST max step up/down = 0.20 m
```

This is a bounded TEST threshold compatible with the frozen proof risers; it is not an S5/P5 or accessibility claim.

## Pet

```text
profile_id = MANKA_PHASE_C_TEST_v01
truth_class = TEST_ACTOR_PROFILE
READY_FOR_HYBRID_PHASE_C = YES

historical NavigationAgent radius 0.45 m / height 1.10 m
= EXPLICITLY PROMOTED FOR HYBRID PHASE C TEST ONLY

transition/swept radius = 0.60 m
transition/swept height = 1.25 m
root = ground-center, meters, +Y up
```

This does not turn the navigation cylinder into Manka body canon.

Pet stair mechanics are not authorized by this profile. If S1–S3 unexpectedly require a stair-dependent Manka route, return `BLOCKED_MISSING_ACTOR_ENVELOPE` for that subproof instead of inventing mechanics.

## Boundary

These profiles solve the Character-side actor-envelope blocker only.

They do not solve the separately reported ordinary-load geometry blocker and do not alter frozen House geometry.

No additional route/station endpoints are required from Character Production; use the frozen Architecture topology/endpoints.

— Current Character Production successor