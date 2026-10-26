---
name: short-form-video-editing
description: Default video-editing house style for the user's own videos. Edits talking-head reels, shorts, product reels, intros/outros and narration/biography videos built from a script in Remotion. Captions sit below the face, UI overlays use Apple liquid-glass motion, every reel gets half-screens and cinematic B-roll, the colour theme is matched to the outfit, and the music and three-pass sound design are original. Delivers the finished MP4. Use whenever the user asks to edit one of their videos or to make captions, on-screen animation or sound design for one, including Roman Urdu requests like "edit karo", "reel bana do" or "video edit kar do". For the user's own footage this takes precedence over HyperFrames and other generic video skills. Not for the opt-in creator-explainer look ("is style mein", "behind-me captions wala", "reference shorts jaisa"); use creator-explainer-style for that.
---

# Short-form video editing (house style)

This is the user's complete video-editing house style (version 17 Oct 2026). Every edit follows it unless the user explicitly asks for the creator-explainer style.

**Language:** talk to the user in Roman Urdu and address them as "ap". Keep the wording simple. If they write in English, simple English is fine.

**Output:** built in **Remotion** (React). For the user's own videos this style and Remotion take precedence over HyperFrames or any other generic video skill.
- Reels/shorts: 1080x1920, 30 fps.
- Long-form intros/outros: 1920x1080, unless the user says otherwise.

## Pick the style and the motion language

| The video is… | Use |
|---|---|
| Anything, unless the user names another style | **This skill** (default) |
| The user asks "is style mein", "behind-me captions wala", "reference shorts jaisa", "creator-explainer style mein" | The **creator-explainer-style** skill, for that one video only. Never mix it into other edits |
| Talking-head or product reel | UI overlays in **Apple liquid-glass / Dynamic-Island motion** ([animation.md §2A](references/animation.md#2a-apple-ui-motion-ui-over-talking-head--product-footage)) |
| Narration / biography / story with no footage (script + voiceover, e.g. the Sadie Sink video) | **Premium cinematic language** ([animation.md §2C](references/animation.md#2c-premium-cinematic-language-narration--biography--story-videos)). Never light Apple-UI scenes; the user called that "weird" |

**Premium bar (everything):** the result must look like a Netflix / Apple TV documentary title sequence or a high-end brand film. If any frame looks like a kids' explainer, a meme edit or a toy, it is wrong (corrections 16–20).

**Colour theme (every video):** pick the best theme yourself. Match it to the speaker's outfit and the background, and use the soft tonal gradients from the approved style boards (corrections 21–22, [captions-and-colour.md §1A](references/captions-and-colour.md#1a-colour-theme-per-video-corrections-2122)).

## Rule precedence

1. **User corrections** (below) override everything else in this skill and its references.
2. Then the Golden Rule and the Mandatory Layers.
3. Then the reference files.

Where a reference line conflicts with a correction (for example the vivid `#FFF200` accent or the Montserrat caps titles in §2A), the correction wins. Those lines are marked **⚠ precedence** in the references.

## User corrections: never repeat these mistakes

These come from the user's own feedback on earlier edits. The numbers are the ones the rest of this skill cites.

1. **"Edit karo" means deliver the COMPLETE finished video.** Don't send a plan and wait for approval. Analyze, build, render and send the final MP4 in the same turn. Open questions go in the final message, after the video.
2. **Never black out the bottom of the frame on footage videos.** No dark panels or heavy dark gradients behind animations. The real video must stay visible around every UI element.
3. **Half-screen** means the speaker (or the product video) in one half and the animation in the other.
   - The video shrinks into a rounded card in the top half: clip-path inset about 120px from the top and 60px from the sides, ending at about y 940, radius ~48, with a thin white border and a soft shadow.
   - The bottom half shows the same video blurred (light blur, barely darkened, never black), and the animation sits there.
4. **UI glass is Apple liquid glass, and the motion is Apple UI motion** ([§2A](references/animation.md#2a-apple-ui-motion-ui-over-talking-head--product-footage)) for UI over footage.
   - Use clear, refractive glass, not dark smoked glass.
   - Use iOS squircles and one container that morphs between states.
   - Use letter-by-letter blur text, springs with a small overshoot, and motion blur on fast moves.
   - Match the references exactly ("same exact") in look and timing, with original content.
5. **Every animation is unique and calm, never rushed.**
   - Each element gets its own entrance; never the same move for everything.
   - Elements hold on screen 0.6–1.5 s (1.2–2.5 s in cinematic videos).
   - Nothing snaps in or out without a morph, blur or mask.
6. **Captions sit clearly BELOW the face**, never next to it, and are fully readable. Keep the same caption structure (small sans words + one big hero word), with the fonts and placement in [§1](references/captions-and-colour.md#1-captions-talking-head).
7. **Sound effects sound rich and premium**, never thin, "beepy" or cartoonish. Follow [sound-design.md](references/sound-design.md) on every edit. UI motion over footage gets the Apple UI sound set; cinematic videos get the cinematic SFX set (correction 19).
8. **Keep this skill current.**
   - At the start of every edit, check the date in [trends-log.md](references/trends-log.md). If it is more than ~4 weeks old, do a quick web search for current short-form editing and sound trends and use what fits. Then propose a skill update; the user saves it.
   - When the user gives new reference videos, analyze them frame by frame (contact sheets, zoomed key frames, spectrograms) before writing any learnings.
9. **Every reel gets the full package by default**, product reels included: premium text, motion graphics (Apple-style UI over the video), full-screen B-roll, a full-screen animation, half-screens and background music. Leave a layer out ONLY when the brief for that specific reel says so, and only for that reel.
10. **Face hiding has zero leaks.** When asked to hide someone's face, the flower covers it in EVERY frame the face is visible: through hard cuts, fast moves, looking down and edge exits. Track per shot, add manual keyframes, and check zoomed stills of the chin and hairline at every cut and exit ([procedures.md](references/procedures.md#face-tracking)).
11. **The face flower is a REAL flower photo, small (face-sized only).**
    - Never a drawn, SVG or cartoon flower ("guffy").
    - Use a real cut-out PNG ([procedures.md](references/procedures.md#real-flower-png)), diameter ≈ 1.3 × the Haar face-box width, centred 0.1 × width below the box centre.
    - Soft drop shadow and a gentle ±3° sway. Hard on/off at cuts.
12. **Music is unique and grabs attention.**
    - Compose an original track that fits the content, with a drop on the first big visual and some variation.
      - Wedding-season / Pakistani fashion: dhol chaal, 808, a santoor-style hook, tumbi stabs, harmonium, claps.
      - Biography/story: cinematic score ([sound-design.md](references/sound-design.md)).
    - Sit it about 10 dB under the voice: music stem ≈ −25 LUFS against a −14 LUFS master, ducked ~4 dB more under speech, with a small 1–3 kHz dip.
    - Skip music only if THAT reel's brief says so.
13. **Full-screen B-roll looks clearly different from the main footage.**
    - Without separate clips, build cinematic cutaways: 1.5–1.6× macro crop, 0.72× slow motion (minterpolate), a warmer/contrastier grade, a moving light leak, film grain, soft-focus edges and a small lookbook label.
    - Tell the user that real stock/AI B-roll can be swapped in if they upload it.
14. **Check that an AI asset can actually be downloaded here before spending credits.** In the sandbox where this style was built, Pollo, Higgsfield, YouTube, Pexels, Pixabay, Unsplash, Wikimedia and Hugging Face were blocked, while npm, PyPI, raw.githubusercontent.com and GitHub release downloads worked. *Environment note: re-test on a new machine.*
15. **The creator-explainer style is opt-in only.** Apply it only where the user asks for it; every other edit uses this default style.
16. **Colour feels premium, never loud, saturated or "gradient-y".** Sadie Sink feedback: v2 "premium feel ni ha color ma", v1 "itna gandha gradient background".
    - Use ONE restrained palette per video ([§2C](references/animation.md#2c-premium-cinematic-language-narration--biography--story-videos) palette for narration; [§1A](references/captions-and-colour.md#1a-colour-theme-per-video-corrections-2122) theme for footage videos):
      - Lifted warm blacks (#0C0B0A–#121110), never pure #000.
      - Off-white text #EDE8DF.
      - ONE muted accent at ≤ 55% saturation (champagne #CDB38A, dusty rose, steel blue, or the outfit-matched accent from §1A).
    - Finish with one cinematic grade over the whole frame: soft halation/bloom on highlights, slightly teal shadows and warm highlights, 35mm grain at 4–6% opacity.
    - **Never** use saturated scene washes (bright red, royal blue), bright yellow spotlight cones, colourful CSS gradients as backgrounds, rainbow / RGB effects, fake "gold" made from a CSS gradient with a light sweep, or a different colour theme per scene.
17. **Text looks premium and editorial, not "YouTube bold"** ("baki text bhi premium ni ha").
    - Do NOT set everything in Montserrat 900 all caps with glow shadows.
    - Use a refined pairing:
      - A high-contrast display serif for hero words (Cormorant Garamond 500–600 / Playfair Display 500 / Instrument Serif / DM Serif Display), often in mixed case or italic.
      - A clean light sans for labels (Inter / Manrope 400–500). Use uppercase only for tiny labels, with wide tracking of 0.25–0.4em.
    - Put fewer words on screen and leave more negative space. Use at most 2 type sizes per frame and no heavy drop shadow or outer glow (a faint `0 2px 12px rgba(0,0,0,.35)` at most).
    - Animate with mask reveals (lines rise from behind a clip edge), slow tracking expansion (letter-spacing 0.02 → 0.08em over 1.5 s), soft blur-to-sharp and gentle opacity. Avoid scale slams and bouncy pops.
    - Narration captions: sentence case, Inter 500 at 46–50px, white at 70% with the spoken word at 100%. No gold-yellow uppercase karaoke.
18. **Animation is cinematic, never cartoon-like** ("animation style cartoon like lagh raha ha").
    - **Banned in cinematic videos:**
      - Spring scale-slams (1.5 → 1 with overshoot) and bouncy pops.
      - Camera shake on many beats.
      - White flash frames and RGB glitch.
      - Shockwave rings and endlessly spinning objects (spinning star, spinning globe).
      - Pins that drop and bounce.
      - Flat vector clip-art (flat leaves, flat waves, cartoon stars, star bursts / rays).
      - Toy-like primitive 3D models (extruded flat shapes, plain boxes, a flat blue whale tail, toy clapper, toy marquee, toy mic).
    - **Use instead:**
      - Slow camera moves: dolly / push-in of 2–4% per scene, gentle parallax between 3–4 depth layers.
      - Long eases: `cubic-bezier(0.16, 1, 0.3, 1)` over 0.8–1.4 s, overshoot ≤ 2%.
      - Light-driven reveals: a light sweep across a surface, exposure bloom, soft focus pulls / depth of field.
      - Match cuts and soft blur dissolves.
      - Real textures: film, paper, brushed metal, fabric, smoke, bokeh.
    - At most ONE big impact moment per video (the story's turning point), with at most a 3–4 px camera nudge.
    - **3D is photoreal or not used at all:**
      - Physically based materials with real HDRI lighting (the three.js repo HDRIs on raw.githubusercontent.com work).
      - Real glTF models (KhronosGroup glTF-Sample-Assets / three.js example models on GitHub) when they fit the subject.
      - Soft contact shadows, depth of field, a slow camera, no spinning.
      - If no realistic model exists for a subject, show it with typography + light + texture (or the user's licensed photos), never with a home-made toy model.
19. **Cinematic SFX are sparse, deep and real-sounding** ("sound effect ni axha").
    - **Never in cinematic videos:** literal cartoon foley (claps, splashes, clock ticks, boings, bloops, coin clinks, glitch buzzes), a whoosh + hit on every cut, or harsh synthesized white noise.
    - **Per 60–75 s, use about:**
      - 1 main impact (sub-drop + low boom + braam with a 2–3 s reverb tail) on the turning point.
      - 2–3 reverse-swell risers into key moments.
      - 4–6 soft air transitions (low-passed below ~6 kHz, wide stereo, 1.5–2.5 s reverb at 25% wet).
      - A quiet atmospheric bed in the gaps (room tone, distant wind, soft shimmer).
    - Prefer real recorded CC0 samples (check GitHub / npm for CC0 SFX packs, or use a library the user supplies) over synthesis. When synthesizing, follow the [cinematic recipes](references/procedures.md#cinematic-sfx-recipes-fallback-when-no-recorded-samples) and always layer sub + body + air with a natural tail.
20. **Run a self-check against the premium bar before rendering.**
    - Make a contact sheet of 8–12 stills and ask of each one: "Would this sit in a Netflix documentary title sequence?"
    - Replace anything that looks childish, toy-like, meme-like, overcrowded or over-coloured BEFORE the full render.
    - Listen to the SFX stem on its own once.
21. **Pick the best colour theme yourself on every video**, matched to the speaker's outfit and the background (user, 2026-10-17: "khud sa best color theme kia kero, text ki outfit or background ka sath").
    - Before designing, sample the outfit and background colours ([§1A](references/captions-and-colour.md#1a-colour-theme-per-video-corrections-2122)) and build ONE theme: a neutral base, a text colour, ONE accent that harmonizes with the outfit, and one glow/gradient tone.
    - Captions, hero words, UI glass tints, widgets, labels, B-roll labels and name tags all use that theme. Never default to gold when it clashes with the outfit or the background.
    - **Readability first:** captions and labels reach ≥ 4.5:1 contrast with the pixels behind them. Fix low contrast by changing the accent's lightness or adding a soft dark radial glow, never a box.
    - Name the chosen theme in one line in the final message (e.g. "Theme: dusty rose + off-white, matched to your pink dupatta and the warm wall").
22. **Use gradients like the style boards: soft, tonal and totally professional** (user: "waisa hi color gradient use kia kero or haar cheez totally professional ho").
    - Gradients stay in ONE hue family and vary only in lightness/opacity ([§1A tokens](references/captions-and-colour.md#gradient-tokens)): warm charcoal radials, a white → light-accent text gradient, clear-glass sheen, hairline rules fading at both ends, soft radial glows, vignettes.
    - Never put two saturated hues together, and never use rainbow, neon or hard-edged gradients.
    - **Professional finish on every frame:**
      - A 90px safe margin, with elements aligned to a grid.
      - Consistent corner radii, shadow direction and type scale.
      - At most 2 font families per frame.
      - No overlapping or cut-off text, and no stretched or pixelated images.
      - Check all of this on the contact sheet (correction 20).

## The Golden Rule: inspiration is a reference, never a copy

- The inspiration teaches the STYLE and QUALITY level: fonts, colours, glow, placement, motion and sound logic.
- NEVER copy-paste an inspiration design, its text, its numbers or its layout one-to-one.
- For every video, analyze what THIS speaker is saying, then design ORIGINAL captions, animations and UI that explain THIS content.
- Every video should feel different in content but the same in style.

## The mandatory layers (every video and reel, correction 9)

1. **Text:** captions on the key moments, plus a name tag when a name is known.
2. **Full-screen animation:** the frame is fully replaced by an animation for a short beat of 1.5–4 s. Build it as an Apple-style UI scene (§2A: light canvas, morphing squircle widget, letter-by-letter title) or as a full-screen metaphor scene (§2B/§2C).
3. **Full-screen B-roll:** 2–4 cinematic cutaways (correction 13), 2.4–3.4 s each, on the words they illustrate or over shaky handling.
4. **Half-screen animation:** see correction 3. In product reels, use photo tiles of the products or a spec widget in the bottom half.
5. **PNG/logo/product UI over the video:** real PNGs, logos or product photo tiles as Apple-style liquid-glass UI, appearing on the exact word. Examples:
   - A "Save this reel" pill that morphs to "Saved ✓".
   - A Dynamic-Island pill that grows into a product card.
   - Feature pills, or a widget with a count-up.
   - Satellites of small round icons.
   - An "Order now" glass button with a tap and a progress ring.
6. **Music** (correction 12) and the three-pass sound design.

Narration videos with no footage replace layers 3–5 with §2C scenes (real photos the user supplies, photoreal 3D, typography scenes).

**Guideline amounts for a 60–90 s reel:**

| Layer | Count |
|---|---|
| Full-screen animations | 1–2 |
| B-roll cutaways | 3–4 |
| Half-screens | 2 |
| UI overlays | 5–7 |
| Captions | ~15–22 |

Never stack two full-screens back to back, and keep the speaker on screen during the hook.

**Logo and PNG rules:** use official or user-supplied logos (the simple-icons npm package as a fallback). Never distort or recolour them; glow and frames go AROUND them.

## 0. Order of work (always)

### Defaults when something is missing
- **No name/title:** leave the name tag out and say so in one line.
- **No sound library:** look for CC0 recorded samples first. Otherwise synthesize each sound to its library role and level, on family stems.
- **Unclear transcript words:** use your best guess and list them at the end.

### Technical settings
- **Export (files under 30 MB):** 2-pass x264, video kbps ≈ (29 × 8000 / duration in s) − 160, AAC 160k.
- **Transcription:** sts-whisper-small (ONNX) + `@huggingface/transformers` (install with `--ignore-scripts`).
  - Use 6–8 s chunks cut at low-energy points.
  - Options: `no_repeat_ngram_size: 3`, `return_timestamps: 'word'`.
  - Language `'urdu'` (transliterated to Roman Urdu) plus a `'translate'` pass. English voiceovers use language `'english'`.
- **Narration voiceover when none is given:** Kokoro TTS (kokoro-onnx, model files from the thewh1teagle/kokoro-onnx GitHub release; voice `af_heart`), then word timings from Whisper.
- **Remotion render:**
  - Render long videos in two frame ranges (`--frames=0-1199`, `--frames=1200-…`) and join them with the ffmpeg concat demuxer, so one crash doesn't lose everything.
  - Guard every `.find()` on time ranges with a fallback.
  - *Environment note:* the original machine had 2 cores, so it used `--concurrency=2` at most. Set concurrency to match the current machine.
- **Shell pitfall:** `pkill -f`/`pgrep -f` match their own command line. Use `pkill -f "[p]ython3 x.py"`, or check the log.

### Steps
1. **Assets:** a 1080x1920 H.264 copy with a light warm grade, plus a lightly blurred copy for half-screens. Remotion `public/` files must be copies or hardlinks, not symlinks.
2. **Analyze:**
   - The hook, the segments, the key words/numbers/brands/products and the emotion.
   - Every cut (HSV-histogram Bhattacharyya > 0.25) and a contact sheet.
   - Sample the outfit and background colours and build the theme ([§1A](references/captions-and-colour.md#1a-colour-theme-per-video-corrections-2122)).
3. **Plan** the layers, with timings tied to the words. If the user linked a doc, add the plan as a new tab.
4. **Build** in this order: captions → half-screens → full-screens/B-roll → UI → music → whooshes → textures → risers & hits → mix (≈ −14 LUFS, peak ≤ −1 dBFS).
5. **Check stills before the full render**, including mid-morph frames: the face, captions, nothing black, the safe area, all layers present, theme contrast and alignment. Then run the premium self-check (correction 20).
6. **Learn from corrections** and propose adding them to this skill.

## Reference files (load when needed)

| File | Load it for |
|---|---|
| [references/captions-and-colour.md](references/captions-and-colour.md) | §1 caption placement, fonts and animation; §1A colour sampling, theme building and gradient tokens |
| [references/animation.md](references/animation.md) | §2A Apple UI motion + Remotion build notes; §2B other full-screen scenes; §2C premium cinematic language and 3D pipeline |
| [references/sound-design.md](references/sound-design.md) | §3 three-pass sound design, the Apple UI and cinematic sound sets, levels |
| [references/procedures.md](references/procedures.md) | §6 flower PNG, face tracking, colour sampling, B-roll from own footage, music synthesis, SFX recipes, analyzing references |
| [references/trends-log.md](references/trends-log.md) | §5 trends log (check its date at the start of every edit) |

## 4. Delivery checklist

- [ ] The complete video is delivered.
- [ ] All layers are present, unless THIS reel's brief removed one.
- [ ] Nothing is black behind animations on footage; the video stays visible.
- [ ] The colour theme was picked from the outfit + background (§1A) and is named in the final message. Captions and labels reach ≥ 4.5:1 contrast.
- [ ] Gradients are soft and tonal (§1A tokens). Every frame is aligned to the 90px safe margin, with consistent radii, shadows and type scale, and nothing overlaps or is cut off (correction 22).
- [ ] UI over footage is Apple-style: clear liquid glass, squircles, continuous morphs, letter blur text, springs and motion blur on fast moves. Mid-morph stills were checked.
- [ ] Narration videos use §2C: one muted palette and a grade; editorial serif + light sans type; slow cinematic moves; photoreal 3D or none; no slams, shakes, flashes, glitches, spins or clip-art.
- [ ] The premium self-check passed on a contact sheet (correction 20).
- [ ] Captions are below the face (or sentence-case narration captions), readable, with varied layouts.
- [ ] Visuals are original, with real numbers, brands and products only.
- [ ] If a face is hidden: a real, face-sized flower covers it in every visible frame (zoomed stills checked).
- [ ] The music is original and about 10 dB under the voice; the master is ≈ −14 LUFS.
- [ ] SFX are stereo, layered, varied and sparse where cinematic. The SFX stem was listened to on its own.
- [ ] Stills were checked, and the file is under 30 MB.
