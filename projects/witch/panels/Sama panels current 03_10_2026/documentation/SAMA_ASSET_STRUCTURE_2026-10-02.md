# SAMA ASSET STRUCTURE — 2026-10-02

## Canonical folders

```text
/DracoWitch/SAMA/
├── Panels/
│   ├── Master/
│   ├── Trash/
│   └── References/
├── Objects/
│   ├── Master/
│   ├── Trash/
│   └── References/
├── 00_CONTROL/
├── 05_DOCS_CURRENT/
└── 90_ARCHIVE/
```

## Panel naming

`pNN-GG-status.ext`

- `pNN` = panel number.
- `p00` is reserved for the clean page/container: binding + substrate + header/footer, no story panels and no text.
- `GG` = generation/order number for that panel, zero-padded.
- `master` = accepted canonical image.
- `trash` = rejected generation.
- `reference` = useful/unresolved candidate or historical visual source that is not yet declared good or bad.

Examples: `p14-08-master.png`, `p15-06-trash.png`, `p03-01-reference.png`.

## Object naming

`objNN-GG-status-[object_name].ext`

Examples: `obj01-04-master-[корзина].png`, `obj02-13-trash-[метла].png`.

Object source photos / unresolved identity references use `reference` in the same status position.

## Current panel masters

- `p07-00-master.png`
- `p09-00-master.png`
- `p10-00-master.png`
- `p11-00-master.png`
- `p12-00-master.png`
- `p14-08-master.png`
- `p15-05-master.png`

## Awaiting real master from Dragon

- `p00` — clean page/container master not yet recovered; current six-panel grimoire page is stored only as `p00-00-reference.png` because it contains story panels and is not the blank container.
- `p01`
- `p02`
- `p03`
- `p04`
- `p05` — latest current candidate is `p05-05-reference.png`; older rejected generations are already in Trash.
- `p06`
- `p08` — four recovered candidates are in References; exact shared-image master still awaiting authoritative file.
- `p13` — `p13-03-reference.png` is the strongest recovered final candidate, but remains Reference until the real master is supplied/confirmed.

## Recovered generation chains already sorted

- P05: `p05-00-trash` … `p05-04-trash`, then `p05-05-reference`.
- P13: `p13-00-trash` … `p13-02-trash`, then `p13-03-reference`.
- P14: `p14-00-trash` … `p14-07-trash`, `p14-08-master`.
- P15: `p15-00-trash` … `p15-04-trash`, `p15-05-master`, later failed correction `p15-06-trash`.

## Important rule

Do not promote a Reference to Master merely because it resembles the documented canon. Master status comes from an explicit accepted file/image. Once the real master is supplied, competing References for that panel can be reviewed and moved to Trash.