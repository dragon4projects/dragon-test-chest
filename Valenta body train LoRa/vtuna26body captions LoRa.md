# Valenta body LoRA — captions

**Trigger word:** `vltna26body`

**Purpose:** train Valenta's body / proportions / silhouette / anatomy rather than her face, identity, hairstyle, or a specific outfit.

## Captioning rules used

- Keep `vltna26body` in every caption as the activation token.
- Describe body shape, proportions, visible anatomy, pose, camera/view and clothing only when it is actually visible.
- Do **not** add negative instructions such as `do not learn`, `not face`, etc. to captions. Captions describe what is present; they are not a reliable mechanism for telling the trainer what not to learn.
- Avoid treating hair, facial identity, jewelry, shoes and background as defining characteristics of the body. They are retained only when useful for describing the visible image or distinguishing the pose/composition.
- Remove redundant generic tags such as `body, anatomy, skin` when they add no useful information.
- Avoid inconsistent skin-color labels (`tanned` vs `fair`) unless skin tone itself is intentionally part of the training target. Here it is **not** treated as a target attribute.
- Keep 25 and 27: the angel wings are clothing/accessory/context in those images, while the body silhouette and pose remain useful. They are not removed solely because they contain wings.
- Cropped shots are retained because they provide additional evidence for torso, waist, hips, legs, knees, shoulders and footwear/body transitions.

## Corrected captions

```text
1.jpg - vltna26body, full body, front view, standing straight, fit athletic physique, long toned legs, defined knees, visible collarbones, cleavage, bare arms and shoulders, wearing a short black satin cowl-neck mini dress with thin spaghetti straps and ruched side seams, black choker, black patent leather platform sandals with ankle straps, plain grey concrete studio background.

4.png - vltna26body, full body, side profile, standing pose, fit athletic physique, toned thighs and calves, defined glutes, bare arms and back, wearing a short black satin cowl-neck mini dress with thin spaghetti straps and open back, ruched side seam, black choker, black patent leather platform sandals with ankle straps and metal buckles, plain grey studio background.

5.png - vltna26body, full body, back view, standing straight, toned upper back, visible spine line, defined glutes, toned thighs and calves, long legs, wearing a short black satin mini dress with low open back and thin spaghetti straps, black choker, black patent leather platform sandals with ankle straps, plain grey studio background.

6.jpg - vltna26body, full body, front view, standing straight, fit athletic physique, visible collarbones, cleavage, flat toned stomach, long toned legs, bare arms, wearing a white ribbed halter crop top with deep scoop neckline, tight low-rise white jeans, white leather sneakers, light grey studio background.

7.jpg - vltna26body, full body, three-quarter side view, standing pose, fit athletic physique, toned midriff, flat stomach, slender arms, long legs, wearing a black crop tank top with thin straps, tight dark grey high-waisted leggings, white low-top leather sneakers, uniform grey studio background.

8.jpg - vltna26body, full body, three-quarter front view, standing pose, athletic physique, toned arms, exposed midriff and belly button, defined quadriceps, long legs, wearing a black fitted crop tank top with scoop neckline and thin straps, tight black denim mini shorts, white low-top leather sneakers, light grey studio background and floor.

9.jpg - vltna26body, full body, three-quarter front view, standing pose, fit athletic physique, cleavage, defined abdominal muscles, flat stomach, bare midriff, long muscular legs, wearing a tight black crop top with scoop neckline and thin straps, short black denim low-rise mini shorts, white leather sneakers, neutral grey studio background.

10.jpg - vltna26body, full body, side profile, standing pose, athletic physique, defined chest profile, flat abdomen, bare arms and midriff, long slender legs, wearing a black crop camisole with thin straps, short tight black denim low-rise shorts, white low-top sneakers, plain grey studio background.

11.jpg - vltna26body, full body, three-quarter side view, standing pose, fit toned physique, cleavage, defined abdominal muscles, bare waist, long legs, wearing a black fitted crop top with scoop neckline and thin straps, low-rise black denim mini shorts, white low-top sneakers, seamless grey studio background.

12.jpg - vltna26body, full body, direct side profile, standing pose, fit physique, bare arms and midriff, flat stomach, slim waist, long straight legs, wearing a black crop top with thin straps, black low-rise denim micro shorts, white athletic sneakers, smooth grey studio background.

14.png - vltna26body, full body, standing pose, slim athletic physique, long toned legs, visible body silhouette, slight side-profile pose, wearing a cropped white leather biker jacket with silver rivets and studs, fitted white leather pants, white crop top with high choker collar, white platform ankle boots with thick block heel and silver buckle.

15.png - vltna26body, full body, back view, standing straight, slender build, defined back and hip contours, long legs, visible back and glute silhouette, wearing a cropped white leather jacket with studded panel lines, tight white leather pants, white platform ankle boots with silver buckles.

16.png - vltna26body, full body, side profile, standing pose leaning slightly back, slim athletic physique, long legs, visible torso and hip profile, wearing a cropped white leather jacket with metallic rivet accents, form-fitting white leather trousers, white platform ankle boots with high block heel and metallic hardware.

17.jpg - vltna26body, medium full body, front view, standing posture, exposed midriff, defined collarbones, slim waist, long legs, wearing a cropped white leather jacket with lapels and decorative studs, white cutout crop top with integrated choker strap, high-waisted white leather fitted pants.

19.jpg - vltna26body, full body, front view, standing pose, slender figure, long lean legs, defined waist and hips, wearing a glossy black vinyl mini dress with thin spaghetti straps and form-fitting cut, black open-toe platform sandals with ultra-high stiletto heels.

20.jpg - vltna26body, full body, back view, standing pose, open back, long lean legs, visible back and hip silhouette, wearing a backless black patent leather mini dress, black high-heeled sandals with thin stiletto heels and ankle strap.

21.jpg - vltna26body, full body, side view, turning pose, slim athletic physique, visible side profile of torso, waist and hips, long legs, wearing a shiny black vinyl bodycon mini dress with thin shoulder straps, black high-heel sandals with thin stiletto heel and platform.

22.png - vltna26body, medium body shot, three-quarter view, visible shoulders and upper torso, slim waist, wearing a shiny black patent leather mini dress with thin straps and deep back cutout, reflective glossy vinyl texture.

23.png - vltna26body, close-up of feet and lower legs, slender lower legs, defined ankles, wearing elegant white high-heeled sandals with thin heel and delicate rhinestone-encrusted straps around the ankle and foot.

24.png - vltna26body, low-angle close-up of feet and lower legs, slender legs and feet, visible lower-leg silhouette, wearing white stiletto sandals with rhinestone spiral straps, with the hem of a white dress with feather trim and ruffled fabric visible.

25.png - vltna26body, full body, side view, standing pose, slim athletic physique, long toned legs, slender arms, visible waist and hip silhouette, wearing a white satin corset top with front lacing and wide shoulder straps, white ruffled side-tie mini skirt, white high-heeled sandals with spiral rhinestone straps, silver rhinestone choker, large white feather angel wings attached to the back.

27.jpg - vltna26body, full body, front view, standing straight, symmetrical posture, slender waist, visible collarbones, long legs, wearing a white satin corseted lace-up mini dress with wide straps and side drawstrings with ruffles, white open-toe stiletto sandals with crisscross rhinestone straps, sparkling crystal choker, large white feather angel wings on the back.

28.jpg - vltna26body, full body, three-quarter side view, relaxed standing posture, athletic fit physique, long toned legs, slender waist, visible hip silhouette, wearing a black fitted camisole crop top with thin spaghetti straps, low-waist tight black denim mini shorts, plain white leather sneakers with thick rubber soles.

31.jpg - vltna26body, medium body shot, front view, slender torso, defined collarbones, cleavage, thin waist, wearing a black satin bodycon mini dress with cowl neckline, ultra-thin shoulder straps and ruched side seams, black choker collar.

32.jpg - vltna26body, lower body front view, standing straight, long slender legs, visible knees, feet turned slightly outward, wearing the hem of a black mini dress and black patent leather platform sandals with ultra-high thin stiletto heels, ankle straps and open toes.

33.png - vltna26body, upper body close-up, front view, athletic torso, toned shoulders and arms, defined collarbones and abdominal muscles, exposed belly button, wearing a white ribbed halter crop top with deep scoop neckline, visible waistband of white denim jeans.

34.jpg - vltna26body, lower body front view, standing straight, long slender legs, flat stomach, visible hip and leg silhouette, wearing high-waisted white coated skinny jeans with front pockets and belt loops, white low-top leather sneakers with laces and platform soles.

35.jpg - vltna26body, midsection and hip close-up, side view, slender waist, curved hips, visible torso and hip silhouette, relaxed arm pose, wearing black high-waisted activewear leggings with form-fitting stretch fabric and visible seam details, bottom edge of a black cropped tank top.

36.jpg - vltna26body, full body, side profile, relaxed standing pose, athletic build, long toned legs, visible waist and hip profile, wearing a black scoop-neck camisole with thin straps, low-rise tight black denim shorts, white platform leather sneakers with laces.

38.jpg - vltna26body, upper body three-quarter view, exposed midriff, flat toned stomach, defined abdominal muscles, slender arms, visible waist and hip transition, wearing a black fitted camisole tank top with thin shoulder straps, low-waist black denim micro shorts with front button and pockets.

39.jpg - vltna26body, lower body front view, standing straight, long slender legs, toned thighs, defined knees, visible lower-body silhouette, wearing the hem of black denim micro shorts and white low-top leather sneakers with laces and thick rubber soles.

41.jpg - vltna26body, medium close-up, upper body front view, slender waist, visible collarbones, cleavage, toned upper torso, wearing a cropped white leather biker jacket with metallic studs, tight white scoop-neck crop top with fabric choker strap, high-waisted white leather fitted pants with belt loops and metallic rivets.

42.jpg - vltna26body, upper body front view, slender torso, defined waistline, cleavage, toned upper body, wearing a glossy black vinyl mini dress with cowl neckline, thin spaghetti straps and black choker collar.
```

## Notes for training

The captions deliberately keep the same activation token `vltna26body` while varying pose/view/clothing/context. There is no separate trigger for front, side, back, cropped, or accessory tests.

The body target should therefore be evaluated by prompting `vltna26body` together with neutral body/pose descriptions, while changing clothing and composition during inference. The captions themselves should not be used as a promise that the resulting LoRA will ignore face or hair completely; those attributes can still leak from the images if they are visually consistent across the dataset.
