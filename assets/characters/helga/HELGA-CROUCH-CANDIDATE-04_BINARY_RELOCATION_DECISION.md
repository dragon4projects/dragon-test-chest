# Binary Relocation Decision — HELGA-CROUCH-CANDIDATE-04

**Test:** #12 — Binary Relocation / Content Identity
**Asset:** HELGA-CROUCH-CANDIDATE-04
**Decision type:** physical binary relocation observation
**Status:** TEST RESULT — not a new asset lifecycle state

## Scenario

The existing primary binary for HELGA-CROUCH-CANDIDATE-04 was relocated from:

`assets/characters/helga/binary/HELGA-CROUCH-CANDIDATE-04.png`

to:

`assets/characters/helga/binary/relocated/HELGA-CROUCH-CANDIDATE-04.png`

The destination file was created from exactly the same binary content.

## Observed identity

Original and relocated files resolve to the same Git blob SHA:

`62a5f8f47fec02344e5bf9061888262f677cf5d6`

The Asset ID remained:

`HELGA-CROUCH-CANDIDATE-04`

No new asset record was created.

## Test action

The asset record's physical-binary path was changed to the relocated path.

The old physical path was then removed from the test branch.

No change was made to:

- Asset ID;
- provenance;
- originating task;
- REUSABLE state;
- CANONICAL_FOR_HELGA;
- consumer decisions;
- replacement history;
- character canon.

## Result

For this tested scenario:

**same binary content + new repository path = same asset identity**

provided the durable asset record is explicitly updated to the new path.

The Git blob/content identity remained unchanged while the file path changed.

Therefore:

`ASSET IDENTITY ≠ FILE PATH`

and:

`FILE PATH` is a mutable locator rather than the asset's semantic identity.

## What this test does NOT establish

It does not establish a universal rule for:

- modified binary content;
- multiple binaries per asset;
- multiple assets sharing one binary;
- external storage;
- persistent content-ID fields in production asset records;
- relocation across repositories or storage systems;
- missing or broken binaries.

Those remain open boundaries unless separately tested.

## Minimal conclusion

The tested architecture does not need a new relocation entity, binary registry, or content-ID metadata field merely to represent a same-content path relocation inside the repository.
