# Captions and colour theme

Sections 1 and 1A of the house style. User corrections in `SKILL.md` override anything here.

## 1. Captions (talking-head)

### Placement
Captions go **below the face**. Caption centres:

| Shot | Caption centre |
|---|---|
| Plain talking head | y ≈ 1235 |
| Seated product reel | y ≈ 1260–1330 |
| UI over the speaker | y ≈ 1010 (the UI starts at y 1140) |
| Half-screen | y ≈ 975–1060 |
| Full-screen / B-roll | y ≈ 1450 |

- Keep clear of the bottom ~18% and the right-side buttons.
- **No boxes.** Use a layered text shadow (`0 0 2px rgba(0,0,0,.55), 0 2px 6px rgba(0,0,0,.55), 0 8px 28px rgba(0,0,0,.55)`) and a soft dark radial glow.

### Structure
- One caption is a 3–7 word phrase in 2–3 stacked lines, with exactly ONE hero word.
- Vary the layouts:
  - **center**;
  - **left**: x 100, lines stepped ~38px;
  - **caps**: small lines uppercase 31px, letter-spacing 0.2em.
- Put captions on the hook, product names, key benefits, colours and the CTA. Skip them where a UI card already says it.

### Fonts
- **Small words:** Plus Jakarta Sans 700, 44px, in the theme's text colour (800 for caps).
- **Hero word:** DM Serif Display Italic (or Cormorant Garamond Italic 600) in the theme accent (§1A). Use muted gold `#D9B26A` only when it suits the outfit and the background.
  - Size = `min(128, 900 / (chars × 0.5))`.
- Load the fonts with `FontFace` inside `delayRender`.

### Animation
- **Hero words and titles:** the Apple letter-by-letter blur reveal ([animation.md §2A](animation.md#2a-apple-ui-motion-ui-over-talking-head--product-footage), the letter-by-letter blur text move).
- **Small lines:** rise 18px + fade over ~0.4 s, staggered 0.08 s.
- **Exit:** letters blur out left to right in ~0.35 s.

**Grade:** warm, cinematic, slightly darkened, with a soft vignette (cool-leaning when the theme is cool).

Narration-video captions follow correction 17 (sentence case, Inter 500 at 46–50px, white at 70% with the spoken word at 100%).

## 1A. Colour theme per video (corrections 21–22)

### Sample the colours (a small script, before building)
1. **Face box:** Haar on 6–10 frames spread across the video.
2. **Outfit region:** from the face bottom + 0.2 × face height down to + 2.6 × face height, 2.2 × face width wide.
3. **Background region:** the frame minus the rembg person mask (`u2net_human_seg`), or the outer 15% of the frame when rembg is too slow.
4. **Clustering:** k-means (k = 4) in CIELAB, per region.
   - Drop skin tones and near-greys from the outfit clusters. The biggest remaining cluster is the outfit colour; keep the second one as a backup.
   - The median of the background is the backdrop colour. Its warmth: b* > 8 is warm, b* < −4 is cool.
5. **Contrast:** measure the local luminance where captions sit (y ≈ 1150–1350).
6. **Product reels:** also sample the product's own colour from a clear frame.

The exact sampling recipe is in [procedures.md](procedures.md#colour-sampling).

### Build the theme
- **Text:** off-white `#F5F2EC` on warm backdrops, `#F3F5F8` on cool ones. Secondary text at 70%.
- **Accent** (hero word, key UI, hairlines, progress rings): the outfit (or product) hue at saturation 35–55% and lightness 68–78%, so it reads on video and stays premium.
  - **Near-neutral outfit** (black, white, grey, beige): champagne `#CDB38A` on warm backdrops, ice blue `#A9C7E8` on cool ones.
  - If the accent is within ~20° hue and a similar lightness of a big background area, it disappears. Shift its lightness, or use the outfit's second colour.
- **Glow / gradient tone:** the accent at 25–35% opacity, or the warm/cool neutral.

**Examples:**

| Outfit | Theme |
|---|---|
| Pink / rose | dusty rose `#D9A0AE` hero, off-white text, soft rose glow |
| Teal / green hijab | sage `#9CCBB8` (or champagne against warm walls) |
| Maroon / red | warm champagne `#D8B98A` (never bright red text) |
| Navy / blue | ice blue `#A9C7E8` |
| Black | champagne `#CDB38A` |
| White / cream | soft bronze `#C49A62` with a slightly stronger text shadow |
| Products | the product's own colour, desaturated as above |

Narration videos use the [§2C palette](animation.md#2c-premium-cinematic-language-narration--biography--story-videos), with the accent chosen from the subject (photos, era, mood).

### Gradient tokens
The approved look from the 2026-10-17 style boards:

| Token | Value |
|---|---|
| Warm cinematic base | `radial-gradient(ellipse 90% 60% at 50% 38%, #1A1714, #0C0B0A 72%)` |
| Monochrome set | `radial-gradient(ellipse 80% 60% at 50% 40%, #3B3B3D, #121213 75%)` |
| Dark-tech | `linear-gradient(180deg, #05060A, #0B1430)` + a radial glow of the accent at ~35% |
| Bold-word text gradient (creator style) | `linear-gradient(180deg, #FFFFFF, <light accent>)`, e.g. `#FFFFFF → #C8C8F8` |
| Liquid-glass sheen | `linear-gradient(135deg, rgba(255,255,255,.22), rgba(255,255,255,.06) 45%, rgba(255,255,255,.12))` + 2px white rim highlight + soft drop shadow |
| Hairline rule | `linear-gradient(90deg, transparent, <accent> at 90% opacity, transparent)`, 1–2px |
| Soft glow behind text | a radial of the accent (or black, for legibility) at 15–45%, blur 20–40px |
| Vignette | `radial-gradient(ellipse 80% 62% at 50% 45%, transparent 55%, rgba(0,0,0,.55))` |
| Light leak | a screen-blended radial of a warm tone (255,170,90) at ≤ 85% that drifts across the frame |
| Grain | 4–6% for cinematic scenes; 12–18% at overlay blend on footage |
