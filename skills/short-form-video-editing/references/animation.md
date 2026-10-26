# Animation style

Section 2 of the house style. User corrections in `SKILL.md` override anything here. Lines marked **⚠ precedence** conflict with a correction; follow the correction unless the user asks for the reference look on that video.

## 2A. Apple UI motion (UI over talking-head / product footage)

Learned on 2026-10-15 from 6 reference clips: an Apple-style text animation, an Apple Wallet UI animation, a "UI now in motion" widget morph, an Apple liquid-glass animation, and two After Effects motion tutorials.

### Look

**Canvas for full-screen UI scenes:**
- Clean light backgrounds: `#F7F7F7` with faint grid lines (`#ECECEC`, ~170px spacing), `#F2F2F2`, or `#E9EAEE`.
- Optionally, a white rounded device card (radius ~60px) with a soft cyan halo around it (`#CFEFFF`, blur ~80px), or a halo in the theme accent.
- Floating devices get a soft elliptical ground shadow underneath.

**Shapes:** iOS squircles, with a corner radius ≈ 22–25% of the short side. Use continuous corners via an SVG superellipse path when possible. Pills are fully rounded.

**Widgets:**
- Either dark cards `#1C1C1E` with ONE vivid accent and white text in an SF-style sans. The accent can be electric yellow `#FFF200` with a soft glow, wallet blue `#2FA8FF`, the product colour, or the theme accent.
  - **⚠ precedence:** corrections 16 and 21 cap the accent at ≤ 55% saturation and require ONE theme accent per video. Default to the theme accent. Use `#FFF200` / `#2FA8FF` only when the user asks for the reference look.
- Or white cards `#FFFFFF` with black text.
- Large soft shadows: `0 30px 60px rgba(0,0,0,0.12), 0 8px 20px rgba(0,0,0,0.08)`.

**Liquid glass** (pills, buttons, lenses, cards over video):
- Nearly clear, with no dark tint: a light backdrop blur (4–8px) + saturate 180%.
- The content behind is REFRACTED: magnified ~1.12–1.2× inside the shape and bent at the rim.
- A bright specular rim (1.5px, white at 90% at the top-left, fading to 0), a soft inner shadow at the bottom-right, a faint chromatic fringe at the edges and a soft drop shadow.
- Labels in a black/white SF-style sans 600.
- When legibility over busy video needs it, add at most a 10–15% white or dark wash.

**Type:**
- UI labels: Inter / SF Pro Display 600–700.
- Titles: geometric caps (Montserrat 700, tracking +0.02em, ~78px).
  - **⚠ precedence:** correction 17 wants editorial type (a display serif for hero words, light sans labels, no "YouTube bold"). Keep Montserrat caps for short UI-scene titles only, never for captions or cinematic titles.
- Accent words in lavender `#8E8CF0` (or a lavender→periwinkle gradient); sub-lines in mint `#2BE3A0`. Use the theme accent instead when lavender/mint clash with the outfit (correction 21).

**Icons:** real app/brand/product icons as squircle tiles, plus small round "satellite" icons (coins, brand marks) floating around a card.

### Moves
Each element picks one move. The timings were measured from the references.

1. **Grow from a dot:** a ~20px dot springs into a squircle widget (overshoot to ~1.08, then settle) in 0.3–0.4 s. The content blurs in (10px → 0) starting 0.1 s later.
2. **Shape morph (Dynamic Island):** ONE container continuously animates its width, height, corner radius and colour between states.
   - Sequence example: app icon → pill with a label → big card → smaller card → pill → dot → gone. Never cut between states.
   - Each morph takes 0.35–0.5 s on a spring (damping ~14, stiffness ~180, small overshoot).
   - The outgoing content blurs out and the incoming content blurs in (8–12px) while the container morphs.
   - Hold each state 0.6–1.2 s. The background can shift (white → `#F2F2F2`) during a morph.
3. **Live widget data:** numbers count up inside the widget (37% → 52%), progress lines draw, and a glowing accent shape (bolt, bar) grows.
4. **Satellites:** small round icons pop in around a card (scale 0 → 1.1 → 1 with blur 6 → 0, staggered 0.1 s) and float ±6px.
5. **3D tilt + colour sweep:** the card tilts ±10–15° (rotateY/rotateZ) while a soft glow in the theme's tones sweeps across it, then it settles flat.
6. **Motion blur on fast moves:** a directional blur proportional to speed (`@remotion/motion-blur` `CameraMotionBlur`, or several sub-frame copies). Exits are quick fly-outs (down/rotate) with blur.
7. **Letter-by-letter blur text:**
   - Split the line into letters. Each letter goes opacity 0 → 1, blur 10px → 0 and scale 1.15 → 1 (or x +8px → 0), staggered 35–45 ms left to right (~0.45 s for 11 letters).
   - Hold ~1 s. On exit, the letters blur out in the same left-to-right order in ~0.35 s.
   - A logo above blurs in (scale 0.9 → 1), and a small app-icon tile blur-pops below.
8. **Glass lens:** a liquid-glass pill/lens slides across the content (icons, product, video), refracting it as it moves.
   - For "download / order", it morphs into a circle with a progress ring.
   - Finale: the whole scene frosts (blur ~20px + 60% white) while the glass button stays sharp.

**Easing:** never linear. Use springs, or `cubic-bezier(0.2, 0.9, 0.1, 1)` for moves and `(0.4, 0, 0.2, 1)` for fades.

### Remotion build notes
- **Morph container:** a single absolutely positioned div whose width/height/borderRadius/background come from `spring()`/`interpolate()`. The child layers for each state cross-fade with `filter: blur()`.
- **Liquid-glass lens:** a clipped copy of whatever is behind it (render the same video/scene again inside the shape), scaled 1.12–1.2.
  - Add an SVG `feDisplacementMap` (with a radial gradient map) for rim bending, plus rim-highlight and inner-shadow layers on top.
  - Don't rely on `backdrop-filter: url()`.
- **Squircle:** an SVG superellipse path, or `border-radius` ≈ 23%.
- **Check stills mid-morph.** The in-between frames are where a morph looks cheap, if it does.

## 2B. Other full-screen motion scenes (from the two tutorials)

**Monochrome 3D-camera scenes with one accent:**
- A grey/black gradient set with a vignette.
- Rounded dark icon tiles with yellow line icons slide through space as the 3D camera moves.
- A white squircle card ("Be productive") with corner brackets.
- A black road path curling to a flag for goals, with a quick red tint flash.
  - **⚠ precedence:** in cinematic videos correction 18 bans flash frames. Use a slow tint shift there instead.
- A 3D clock or coin for time/money, with big bold white type ("time is / money"). Per correction 18, 3D must be photoreal; otherwise use typography + light.
- **Handwritten priority:** crossed-out handwritten words (TOMORROW / SOMEDAY / LATER / NEXT WEEK) around one yellow sticky note ("NOW").

**Halftone B&W collage:**
- A paper/halftone texture, and a photo card with chamfered corners that splits apart to reveal a 3D object (brain, eye) with soft contact shadows.
- Thin construction lines and a rotating spotlight cone beam on a dark set.
  - **⚠ precedence:** correction 16 bans bright yellow spotlight cones. Keep the beam white-warm and soft.
- The camera pulls back to reveal the context.
- Small light text + one huge bold word ("he plays with his / mind").

**Still available when they fit:**
- Dark-tech cutaways (`#05060A` → navy, a radial glow, one accent).
- **Object metaphors:** hourglass = time, chess piece = standing out, chain = connection, iceberg = hidden depth, bulb = idea, tangled → straight thread = chaos → system, bridge = gap, key = unlocking, elastic band = flexibility, globe = worldwide.
- **Product reels:** the accent is the product colour (rose `#E0457B`, navy `#4C6BFF`, desaturated per §1A). Use muted gold `#D9B26A` for quality/CTA when it suits the theme.

The UI follows the words and appears on the exact spoken word. Data and numbers are always real.

## 2C. Premium cinematic language (narration / biography / story videos)

Learned on 2026-10-15 from the Sadie Sink video:
- **v1** used Apple-UI light scenes and was rejected as weird and cheap.
- **v2** used a dark stage, gold Montserrat slams and home-made 3D props. The structure was OK, but the colour, text, animation and SFX were judged not premium and cartoon-like.

Corrections 16–19 are the rules; this section is how to build it.

### Palette (one per video)
- **Base:** warm charcoal `#0C0B0A` → `#161412` with soft volumetric light (a large, very soft beam at 6–10% opacity, white-warm, not yellow).
- **Text:** off-white `#EDE8DF`; secondary text at 55–65% opacity.
- **ONE muted accent:** champagne `#CDB38A`, or a subject-led tone (desaturated teal `#6E8C8A`, dusty rose `#B9877F`, steel blue `#7D8FA3`).
- **Finish:** a grade, halation, 4–6% grain and a gentle vignette.

### Typography
- **Hero lines:** Cormorant Garamond 500/600 or Playfair Display 500, 110–170px, mixed case, tight tracking (−0.01em). Italic for one emotional word.
- **Labels:** Inter/Manrope 500, 22–28px, uppercase, tracking 0.3em, 60% opacity, often with a thin 1px hairline rule that draws in beside them.
- **Years and numbers:** the serif in lining figures, large and thin, or outlined (1px stroke) with the fill fading in. No CSS-gradient gold.
- **Layout:** editorial. Use left-aligned or centred blocks with generous margins (≥ 90px) and lots of negative space. Never show more than ~6 words besides captions.

### Scene types that read as premium
- **Title card:** the name in large serif, a thin rule draws across, a small label fades in, and soft light passes over the letters.
- **Date / place card:** a big thin year with a slow focus pull and the place in small tracked caps. Use a real map texture (muted, low contrast) with a slow pan instead of a cartoon pin.
- **Photo scenes** (when the user supplies licensed photos): a Ken Burns push-in, depth-split parallax (an rembg person matte in front of a blurred background), a film frame / soft vignette and a slow light leak.
- **Object scenes:** photoreal 3D (real glTF + HDRI, PBR, DOF) on a dark set with the camera dollying slowly. Or a still life made of light and texture (stage curtain fabric, film strip, marquee bokeh) rather than a modelled toy.
- **Turning point:** the ONE big moment. The frame drops to near black under a low braam/sub-drop, and the key line reveals with a slow mask and an exposure bloom.
- **Montage:** quick but smooth, 0.6–0.8 s per item, with blur dissolves, consistent framing and years as thin serif numerals. No slams.
- **End card:** the name + one line, a slow push-in, a light sweep, and a fade to warm black.

**Transitions:** soft blur dissolves, light-wipes (a bright soft band crosses and reveals), match cuts on shape/position, and a dip to warm black on chapter changes. No white flashes, glitch or spin.

### Pipeline notes
- **3D cost:** full-res 3D (three.js via `@remotion/three`, `--gl=angle`) took ~7 s/frame on the original machine. Pre-render 3D as transparent PNG stills/sequences at the size you need and composite them in 2D.
- **ThreeCanvas with `frameloop="never"`:** after async geometry/texture loads, call `useThree(s => s.advance)(performance.now())`, then `continueRender` in a `requestAnimationFrame`. The hooks must live in a component rendered inside the canvas.
- **Image sequences:** the files must be unpadded (`element-N.png`), or renamed to match the code.
- **Stills of photoreal products/backdrops:** build a plain three.js page (GLTFLoader + RGBELoader, ACES tone mapping, a ShadowMaterial floor for contact shadows). Screenshot it with Playwright Chromium (`--use-gl=angle --use-angle=swiftshader`); that takes ~5–10 s per image.
- **Real photo backdrops:** render the three.js equirect panoramas (e.g. `san_giuseppe_bridge_2k.hdr`, `kandao3.jpg`, `2294472375_24a3b8ef46_o.jpg`) as the scene background, with a 60–65° FOV camera.
