# Test #12 — Binary Relocation Handoff

**Date:** 2026-10-04
**Repository:** dragon4projects/dragon-test-chest
**Test:** Binary Relocation / Content Identity
**Result:** PASS — FOR TESTED REPOSITORY-LOCAL SCENARIO

## Question

Can the same physical binary move to a new repository path without becoming a new Asset, and without requiring a new relocation entity or persistent content-ID field?

## Starting state

Asset:

`HELGA-CROUCH-CANDIDATE-04`

Original primary binary:

`assets/characters/helga/binary/HELGA-CROUCH-CANDIDATE-04.png`

Original Git blob SHA:

`62a5f8f47fec02344e5bf9061888262f677cf5d6`

## Test action

A byte-identical binary was placed at:

`assets/characters/helga/binary/relocated/HELGA-CROUCH-CANDIDATE-04.png`

The destination resolved to the same Git blob SHA:

`62a5f8f47fec02344e5bf9061888262f677cf5d6`

The asset record was then updated to point to the new path, and the old primary path was removed from the test branch.

## Observed result

The Asset ID remained:

`HELGA-CROUCH-CANDIDATE-04`

No new Asset record was created.

The following remained unchanged:

- provenance;
- originating task;
- consumer decisions;
- replacement history;
- REUSABLE state;
- character canon.

The physical locator changed.

The Git content identity did not.

Therefore the tested scenario supports:

**same binary content + new repository path = same asset identity**

when the durable asset record is explicitly updated to the new path.

## Important boundary

This does NOT prove a universal content-identity policy.

Still open:

- modified binary content;
- multiple binaries per asset;
- multiple assets sharing one binary;
- cross-repository relocation;
- external storage;
- persistent content identifiers in production records;
- semantics of missing/broken binaries after relocation.

## Architecture consequence

No new relocation entity was required.

No binary registry was required.

No persistent content-ID field was required for this repository-local test.

The smallest sufficient model remains:

`ASSET RECORD → current physical path`

with Git itself providing content identity/history at the repository layer.

## Relation to Test #9

Test #9 established:

`ASSET IDENTITY ≠ FILE PATH ≠ GIT BLOB / CONTENT IDENTITY`

Test #12 strengthened that boundary by showing that the file path can change while the Asset ID and Git blob identity remain unchanged.
