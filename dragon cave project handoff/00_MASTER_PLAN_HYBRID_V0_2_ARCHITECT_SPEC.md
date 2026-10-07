# DRAGON HOUSE — MASTER PLAN HYBRID v0.2

**Date:** 2026-09-30  
**Author:** Shursha, Dragon House Architect  
**Status:** ARCHITECT SYNTHESIS / preferred development base, geometry still subject to blockout validation

## 1. What changed

This plan supersedes treating Options A, B, or C as standalone candidates.

Independent reviews converged on:

- **C as macro-growth logic**;
- **B as local chamber / threshold / partial-sightline language**;
- **A as semantic orientation from public to private**.

Dragon additionally locked the embodiment model:

- Dragon is outside the simulation by default;
- a Dragon body is optional and explicit;
- `HOME_STATIC` places the body at a home/living-room anchor;
- `WORK_STATIC` places the body at a workshop/work anchor;
- `ABSENT_FROM_SIMULATION` removes the body;
- moving between anchors is instantaneous state change / teleport;
- Dragon has no navigation agent and never circulates room-to-room.

## 2. Core topology

The central level is no longer a Dragon traffic trunk.

It is a **shared irregular cave band with multiple destination chambers and bypasses**.

Main spatial sequence remains legible:

`ENTRY → ARRIVAL → SHARED / SOCIAL → QUIETER TERRITORIES → DEEP PRIVATE`

But that sequence is not a mandatory corridor.

### Arrival / Receiving

A threshold zone between outside and domestic life.

Supports:
- luggage;
- temporary deliveries;
- guest arrival;
- weather traces;
- future entrance events.

### Common / Social

A destination pocket rather than the central toll gate.

Supports:
- hearth;
- common table;
- seating island;
- temporary gathering;
- event mess;
- optional `HOME_STATIC` Dragon anchor.

Residents can bypass it.

### Work / Study / Workshop Bay

A side chamber, never a through-route.

Supports:
- Dragon-associated work traces;
- papers/storyboards;
- tools;
- archive/work surfaces;
- optional `WORK_STATIC` Dragon anchor.

### Rest / Quiet Home Pocket

A smaller, quieter domestic destination.

Not a compulsory route to private/service zones.

### Deep Private / Memory Vault

Reached through a real threshold transition:
- bend;
- material/light/acoustic change;
- privacy boundary.

It is not merely “the leftmost label.”

### Artifact / Memory Branch

A dedicated branch exists, but memory remains distributed around the House.
This branch is not the only place history can live.

## 3. Resident circulation first

Resident/guest/pet movement is the primary locomotion system.

The plan has a bypass / circulation spine along the edge of the core.

It connects to at least three vertical access nodes:
- social-side access;
- residential/work-side access;
- quiet/private-side access.

The purpose is:
- optional social contact;
- route choice;
- privacy;
- believable disappearing/reappearing;
- future branch growth;
- reduced congestion.

## 4. Static Dragon embodiment

Approved initial anchors:

```text
ANCHOR_DRAGON_HOME_STATIC_01
ANCHOR_DRAGON_WORK_STATIC_01
```

These anchors:
- occupy real scene volume only while explicitly active;
- are placed off essential resident bypass routes;
- may require local resident avoidance;
- are never connected by Dragon pathfinding.

Allowed presentation-only idle motion:
- breathing;
- blinking;
- tiny tail movement;
- settling;
- pose variation.

Not allowed without a new explicit event:
- walking;
- crawling;
- room-to-room travel;
- spontaneous relocation;
- inferred embodiment from chat/activity.

## 5. Camera language

Architecture must support:
- one chamber filling most of screen at maximum zoom;
- partial adjacent-room visibility;
- natural occlusion seams;
- follow targets disappearing behind rock/thresholds;
- empty rooms;
- activity outside the current viewport;
- privacy stops at real thresholds.

The camera observes rather than summons.

## 6. Linger vs circulation

The plan distinguishes:
- routes;
- thresholds;
- linger zones;
- private edges;
- bypasses;
- low-activity pockets.

Important rooms are not all transit spaces.

## 7. Service substratum

A lower/edge service layer is reserved conceptually for mundane infrastructure:
- storage;
- water;
- cleaning;
- ventilation;
- repair/tools;
- laundry;
- waste;
- medical/basic supplies;
- maintenance access.

Not every service function needs a hero room.

Some may remain wall niches, old service cavities, cabinets, or short technical branches.

## 8. Growth seams

Deliberate unfinished seams remain:
- upper/archive branch;
- deeper/private continuation;
- lower/service/residential continuation.

Future history should attach without requiring a complete rebuild.

## 9. Dimensions

Source-backed Dragon reference remains:
- principal PNBK-3(D) corridor: approximately **15 m wide × 10 m clear height**.

In Dragon House this is now:
- a scale/atmosphere/reference anchor;
- useful where monumental volume earns its keep;
- **not** a mandatory continuous locomotion envelope.

Residential bands remain approximately human-to-centaur scale:
- roughly 2.8–3.2 m domestic ceiling as a current project target.

## 10. Next validation

Before geometry is locked, blockout must test:
1. resident paths with Common bypass;
2. three vertical access nodes;
3. Manka follow across offsets;
4. room-scale camera framing;
5. privacy threshold behavior;
6. optional HOME_STATIC body occupancy;
7. optional WORK_STATIC body occupancy;
8. resident routing while either Dragon anchor is occupied;
9. service-layer accessibility;
10. future branch sockets.

If those pass, this becomes the preferred shell for interior development.