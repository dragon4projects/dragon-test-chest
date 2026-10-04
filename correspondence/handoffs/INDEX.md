# Handoff Index

## SAMA

- [VESTOCHKA Vera v1 → Nika — SAMA handoff, 2026-09-25](sama/VESTOCHKA_VERA1_TO_NIKA_SAMA_HANDOFF_R4_2026-09-25.md)
  - Full continuity handoff.
  - Contains current-state warnings, source precedence, historical recovery and a read-only reconciliation gate.

## WITCH

- [DracoWitch → Nika — WITCH full handoff, 2026-09-25](witch/VESTOCHKA_DRACOWITCH_TO_NIKA_WITCH_FULL_HANDOFF_2026-09-25.md)
  - Full project continuity handoff.
  - Contains historical/current boundary, production checkpoint, technical discoveries and reopening conditions.

- [WITCH Panel 017 — Helga crouching, 2026-10-03](witch/WITCH_P017_HELGA_CROUCH_HANDOFF_2026-10-03.md)
  - Focused production handoff for task WITCH-P017-HELGA-CROUCH-001.
  - Points to the panel state, decision, accepted asset, character state and originating request.

## TEST_PROJECT_B / CROSS-PROJECT

- [TEST_PROJECT_B Panel 003 — Helga reuse, 2026-10-03](cross-project/TESTB_P003_HELGA_REUSE_HANDOFF_2026-10-03.md)
  - Focused consuming handoff for task TESTB-P003-HELGA-REUSE-001.
  - Reuses HELGA-CROUCH-CANDIDATE-03 from WITCH without changing originating provenance or Helga canon.

- [HELGA-CROUCH-CANDIDATE-03 — reuse lifecycle, 2026-10-03](cross-project/HELGA_CROUCH_REUSE_LIFECYCLE_HANDOFF_2026-10-03.md)
  - Focused lifecycle handoff: the asset was reusable and used, but was later not recommended for new production reuse.
  - Points to the asset record, lifecycle decision, existing consumers and TEST_PROJECT_C decision.

- [HELGA-CROUCH-CANDIDATE-03 — reuse reversal, 2026-10-03](cross-project/HELGA_CROUCH_REUSE_REVERSAL_HANDOFF_2026-10-03.md)
  - Focused Test #6 handoff: the asset moved from REUSABLE=NO back to REUSABLE=YES without rewriting the earlier lifecycle decision or historical consumers.
  - Points to TEST_PROJECT_D as the new consumer after reversal.

## TEST_PROJECT_D

- TEST_PROJECT_D Panel 001 — Helga reuse after lifecycle reversal, 2026-10-03
  - Task TESTD-P001-HELGA-REUSE-001.
  - The production-test records are stored under projects/test_project_d/ and correspondence/requests/test_project_d/.

## Test note

These are deliberately real documents from the Cloud Library plus architecture-test material created in this repository. Handoffs transfer context, provenance, decisions and open state; they do not automatically transfer authority.

## TEST 7 / CROSS-PROJECT

- [HELGA-CROUCH-CANDIDATE-03 — multiple consumers, Test #7, 2026-10-03](cross-project/HELGA_CROUCH_MULTIPLE_CONSUMERS_TEST7_HANDOFF_2026-10-03.md)
  - Focused Test #7 handoff.
  - Records seven known consumer scenarios, the discoverability observation, current bounded conclusion, and open questions.

## TEST 8 / CROSS-PROJECT

- [HELGA crouch replacement — Test #8, 2026-10-04](cross-project/HELGA_CROUCH_REPLACEMENT_TEST8_HANDOFF_2026-10-04.md)
  - Focused replacement handoff for TEST_PROJECT_H / Panel 001.
  - Records the initial use of HELGA-CROUCH-CANDIDATE-03, its consumer-specific replacement by HELGA-CROUCH-CANDIDATE-04, provenance boundaries, lifecycle separation and open supersession questions.
