# SAMA — OBJECT ASSET REGISTRY CURRENT
Date: 2026-10-03
Status: AUTHORITATIVE CURRENT REGISTRY

## Naming rule

Canonical reusable assets use:

`ASSET.<CLASS>.<OBJECT>[.<VARIANT>].NNN-status.ext`

Examples:
- `ASSET.PROP.HEARTH.001-master.png`
- `ASSET.PROP.LINGERIE.SET.BLACK.001-master.png`
- `ASSET.PROP.SHOES.LAPIGALLE.RED.001-master.png`

Rules:
- `master` = accepted canonical reusable asset.
- `reference-source` = source/reference identity image, not a master.
- `GNN-trash` = rejected historical generation retained for provenance.
- Do not create new `objNN-...` names. The old objNN scheme is legacy only.
- Existing accepted assets have been renamed into the canonical ASSET.* scheme without changing their bytes.

## MASTER — /DracoWitch/SAMA/Objects/Master/

### Architecture / large props
- `ASSET.PROP.HEARTH.001-master.png`
  - canonical Dragon-house hearth structure.
- `ASSET.PROP.DININGTABLE.001-master.png`
  - canonical dining table.
- `ASSET.PROP.FURRUG.001-master.png`
  - canonical pale long-fur rug / hide.

### House props
- `ASSET.PROP.BASKET.001-master.png`
  - canonical Dragon-house basket / bin.
- `ASSET.PROP.BROOM.001-master.png`
  - canonical simple witch broom.

### Lingerie
- `ASSET.PROP.LINGERIE.BRA.BLACK.001-master.png`
  - standalone black bra component.
- `ASSET.PROP.LINGERIE.PANTIES.BLACK.001-master.png`
  - standalone black panties component.
- `ASSET.PROP.LINGERIE.SET.BLACK.001-master.png`
  - complete black lace lingerie set.
- `ASSET.PROP.LINGERIE.SET.BURGUNDY.001-master.png`
  - complete burgundy / wine-red lace lingerie set.

The standalone black bra/panties remain valid because they are reusable isolated components; the full black set is a separate canonical asset, not a replacement.

### Shoes
- `ASSET.PROP.SHOES.LAPIGALLE.RED.001-master.png`
  - Christian Louboutin LA PIGALLE, red patent pump identity.
- `ASSET.PROP.SHOES.ROSAZ100.BLACK.001-master.png`
  - Christian Louboutin ROSA Z 100, black sandal identity.
- `ASSET.PROP.SHOES.BRIGITTE100.BLACK.001-master.png`
  - Jimmy Choo BRIGITTE 100, black lace pump identity.

## REFERENCES — /DracoWitch/SAMA/Objects/References/

- `ASSET.PROP.BROOM.001-reference-source.jpg`
  - original broom identity reference retained even though a master now exists.
- `ASSET.PROP.PENDANTS.WHITE.001-reference-source.jpg`
  - source-only white-ribbon / pendant reference; no standalone master yet.

## TRASH — /DracoWitch/SAMA/Objects/Trash/

Basket rejected chain retained with chronology:
- `ASSET.PROP.BASKET.001-G00-trash.png`
- `ASSET.PROP.BASKET.001-G01-trash.png`
- `ASSET.PROP.BASKET.001-G02-trash.png`

Historical generation 03 remains deliberately absent because the old documentation recorded an unrecovered intermediate ancestor.

## Legacy rename map

- `obj01-04-master-[корзина].png` → `ASSET.PROP.BASKET.001-master.png`
- `obj02-01-master-[метла].png` → `ASSET.PROP.BROOM.001-master.png`
- `obj04-00-master-[бюстгальтер_черный].png` → `ASSET.PROP.LINGERIE.BRA.BLACK.001-master.png`
- `obj05-00-master-[трусики_черные].png` → `ASSET.PROP.LINGERIE.PANTIES.BLACK.001-master.png`
- `obj06-00-master-[LA_PIGALLE_красные].png` → `ASSET.PROP.SHOES.LAPIGALLE.RED.001-master.png`
- `obj07-00-master-[ROSA_Z_100_черные].png` → `ASSET.PROP.SHOES.ROSAZ100.BLACK.001-master.png`
- `obj08-00-master-[BRIGITTE_100_черные].png` → `ASSET.PROP.SHOES.BRIGITTE100.BLACK.001-master.png`

References/trash were renamed by the same rule.

## Next extraction/build queue

Still expected from the current Dragon-house/SAMA asset plan:
- `ASSET.PROP.TABLETOP.001`
- `ASSET.PROP.MUG.BLACKRED.001`
- `ASSET.PROP.ASHTRAY.DRAGONBOWL.001`
- `ASSET.PROP.CIGPACK.001`
- `ASSET.PROP.CIGARETTE.001`
- `ASSET.PROP.CRUMPLED.DRAFTS.001`
- `ASSET.PROP.PHONE.001`
- `ASSET.PROP.PAPERCUP.001`
- `ASSET.PROP.TRAVELBAG.VALENTA.001`
- `ASSET.PROP.BOOTS.WINTER.001`

## Owner rule

Panel masters are evidence/story canon, but dedicated accepted asset masters may supersede accidental panel geometry for future continuity.