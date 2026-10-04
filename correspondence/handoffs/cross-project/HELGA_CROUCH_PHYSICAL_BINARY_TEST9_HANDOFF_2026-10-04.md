# Test #9 Handoff — HELGA physical binary asset

**Test:** TEST 9 — PHYSICAL BINARY ASSET
**Date:** 2026-10-04
**Repository:** dragon4projects/dragon-test-chest

## Scenario

The test used the existing Asset B:

HELGA-CROUCH-CANDIDATE-04

from TEST_PROJECT_H / Panel 001 and the replacement chain established by Test #8.

A real 1×1 PNG was added to the repository:

assets/characters/helga/binary/HELGA-CROUCH-CANDIDATE-04.png

The asset record now links explicitly to that physical binary.

## Observed facts

- The binary is a real Git-tracked file, not a placeholder path.
- The asset record and physical binary can be navigated in both directions when the repository path is known.
- TEST_PROJECT_H / Panel 001 → current decision → HELGA-CROUCH-CANDIDATE-04 → physical binary is reconstructable through the existing records.
- A second path, HELGA-CROUCH-CANDIDATE-04-copy.png, was created with identical binary content. Git recorded the same blob SHA for both paths.
- A modified 1×1 PNG fixture, HELGA-CROUCH-CANDIDATE-04-modified.png, was created. It has a different Git blob SHA.
- The two same-content paths did not require a second asset record.
- The modified binary fixture did not require a second asset record either; the experiment treated it as a different physical binary, not automatically as a new asset.
- On temporary branch test9-missing-binary-observation, the primary binary path was removed while the asset record remained. The record therefore survived the absence of the current physical file.
- On that temporary branch, the same asset record was pointed at the modified binary fixture. The Asset ID remained HELGA-CROUCH-CANDIDATE-04. This was an observation branch only and did not change main.
- Git history retains the earlier binary object after the path is removed from the branch tree; current-path presence and historical object existence are separate facts.

## Identity observations

The test distinguishes three things:

1. Asset identity — the durable Asset ID / asset record.
2. Physical file path — where the binary is stored in the repository tree.
3. Git blob/content identity — the content object Git associates with identical binary contents.

A file path is not the same thing as asset identity.

A Git blob is not automatically an asset record.

A second path containing identical bytes did not automatically become a second asset.

A changed binary did not automatically become a second asset either.

The test therefore does NOT establish a universal rule for when changed binary content should create a new asset. It establishes only that the current record model does not force that decision automatically.

## Missing / changed binary

A missing physical file does not erase the asset record or its provenance. The record can remain historically meaningful even when its currently referenced file is absent.

However, a plain path link cannot itself prove that the binary is still present; repository inspection is required.

Changing the physical target is possible without changing the Asset ID, but the meaning of that change remains a semantic decision. The test did not introduce an asset-version model.

## Replacement

The Test #8 replacement chain remains intact:

TEST_PROJECT_H / Panel 001
→ initial decision
→ HELGA-CROUCH-CANDIDATE-03
→ replacement decision
→ HELGA-CROUCH-CANDIDATE-04
→ current decision
→ physical binary

No old Test #8 decision was rewritten.

No provenance was changed.

## What was not needed

- binary registry;
- blob registry;
- asset registry;
- consumer registry;
- manifest;
- artifact database;
- automatic synchronization;
- automatic hash/checksum field in the asset record;
- asset version entity;
- file version entity;
- global missing/orphan/broken status;
- supersession registry.

Git already provides content-object identity and history at the repository layer, but Test #9 did not prove that the architecture must expose or duplicate that mechanism in asset records.

## Inferences

For the tested one-asset/one-primary-binary scenario, an explicit repository path from the asset record is sufficient to connect the asset record to a real physical binary.

For reverse navigation, the path is sufficient when starting from the repository file entry; content alone does not carry semantic knowledge that it belongs to HELGA-CROUCH-CANDIDATE-04.

File path identity and asset identity must therefore not be conflated.

## Hypotheses / still open

- Whether a production asset record should also persist a content identifier remains unproven.
- Whether moving a binary while preserving content should be treated as a relocation or a new physical file is untested as a first-class operation.
- Whether a changed binary should create a new asset depends on semantic intent and is not established here.
- Many binaries per asset, many assets sharing one binary, external storage, and large binary collections remain untested.
- Whether repository search remains adequate for binary-to-asset reverse discovery at scale remains open.
- The temporary observation branch was intentionally left as an experimental trace; it is not part of the accepted main-branch state.

## Accepted conclusion

For this test, the smallest sufficient model is:

ASSET RECORD
→ explicit physical-file path
→ real Git-tracked binary

The binary may disappear without destroying the asset record.

Identical binary content at another path does not automatically create another asset.

A changed binary does not automatically create another asset.

No new global storage architecture was justified.

## Next minimal test

TEST 10 — NEW-SISTER RECONSTRUCTION.

A fresh sister should receive only repository access plus the test protocol and reconstruct the current architecture, completed tests, open questions, and the correct next action.
