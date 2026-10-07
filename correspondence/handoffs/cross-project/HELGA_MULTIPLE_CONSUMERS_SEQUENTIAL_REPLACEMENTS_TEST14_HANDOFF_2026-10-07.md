# Test #14 — Multiple Consumers + Sequential Replacements Handoff

**Date:** 2026-10-07
**Repository:** dragon4projects/dragon-test-chest
**Result:** PASS — FOR TESTED SCOPE

## Purpose
Test the intersection of multiple independent consumers and sequential consumer-specific replacements using one shared origin Asset A.

## Scenario
- Panel 001: A → B → C
- Panel 002: A → D
- Panel 003: A → E → F
- Panel 004: A reuse probe

## Scope
The test is limited to one shared origin asset, three replacement branches, one additional reuse probe, repository-local durable records, and repository-first reconstruction. It does not test arbitrary-scale consumers, exhaustive discovery, global retirement, external storage, or automatic propagation.

## Durable records
See the master request, six asset records, four panel states, and consumer-specific decision records under TEST_PROJECT_J.

## Reconstruction entry point
Start from the Test #14 master request and follow its explicit links to panel states, decisions, and assets.

## Result
The existing durable record model represented the three independent branches and the additional A reuse probe without a consumer registry, replacement registry, lineage/version mechanism, global current asset, or global supersession state.
