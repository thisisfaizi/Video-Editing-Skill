---
name: creator-explainer-style
description: Opt-in creator-explainer editing style for the user's videos. Key captions sit behind the person (rembg cut-out), with white subtitle pills, glowing stat numbers that count up, mint keyword pills, 3D-tilted B-roll with depth of field, 50/50 hard splits, a designed split-hook title card and a beat-driven bed with sub-booms. Use ONLY on the one video where the user explicitly asks for it, e.g. "is style mein edit karo", "behind-me captions wala style", "reference shorts jaisa" or "creator-explainer style mein". Every other edit uses short-form-video-editing.
---

# Creator-explainer style (opt-in)

Use this style ONLY on the video where the user asks for it ("is style mein edit karo", "behind-me captions wala style", "reference shorts jaisa", "creator-explainer style mein"). For every other edit, use **short-form-video-editing**.

Everything not covered here follows short-form-video-editing: delivering the complete video, the face-hiding flower, transcription, music synthesis, export size, shell pitfalls, the Golden Rule and the language rule (Roman Urdu, "ap").

This style was learned on 2026-10-15 from 4 creator shorts the user supplied (creator-income and AI-editing explainers).
- Reproduce the same placements, B-roll types, half-screens and sound effects, but with **original visuals for each video**. Never copy the reference frames.
- The fonts are provisional until the user names their own lettering.

## 1. Talking head + text placements

The speaker is centred in a dark, moody room with coloured practical lights. The edit cuts away often and returns for punchlines and numbers.

**A. Subtitle pills** (every spoken phrase, for the whole video):
- A white rounded rectangle (`#F4F4F6`, radius ~12px, padding ~12 × 24px) with dark text `#111`.
- A semibold geometric sans (Poppins / Plus Jakarta Sans 600), ~38–40px, 2–5 words per pill.
- Centred at y ≈ 1530 on every shot.
- Animation: only a 0.1 s fade/scale 0.96 → 1.

**B. Key captions BEHIND the person** (the user's favourite; they must look clean and professional, never cheap):
- **Serif + bold:** a small serif line (DM Serif Display / Lora, white, 64–84px) over one big bold word (Inter 800, 150–250px, white → lavender `#C8C8F8` gradient, letter-spacing −0.03em).
  - Place it across the chest (y ≈ 1100–1250) with the hands/mic in front.
  - Or place it huge behind the head/shoulders (y ≈ 150–450) for section words ("1st", "2nd").
- **Word-highlight:** a bold rounded sans in white, with the current word in mint `#08D080`, word by word at chest level (y ≈ 1050–1150).
- **Motion:** words blur in (8px → 0) and rise 20px over ~0.3 s, staggered, then fade out fast.

**C. Glowing stat text** (every number spoken):
- "That's about" (Inter 600, ~70px) above a big number (Inter 800, 130–170px).
- White, with a soft white + light-blue glow.
- On the chest at y ≈ 1150–1280, usually behind the hands.
- The number counts up for 0.6–1.0 s to the real spoken value.

**D. Mint keyword pill:** `#48E880` with 1–3 white bold words, on a split seam or the chest. It pops in over 0.15 s (scale 0.8 → 1).

**E. Floating cards:**
- Screenshots/product photos with a 2px brand border (mint `#48E880`), radius ~16px.
- Place them over the lower body (y ≈ 1170–1640), or BEHIND the head at the top (y ≈ 100–600, with the person in front).
- Use side-by-side pairs with labels for comparisons.

**F. Emphasis moves:**
- Viewfinder corner brackets around the face.
- A quick exposure flash (+30% for 0.2 s) on a punch word.
- 4–6% punch-ins on hook words.

## 2. B-roll and full-screen graphics

These fill ≈ 55–65% of the runtime, with a new visual every ~2–3 s.

| Scene | How it looks |
|---|---|
| **3D-tilted screen/footage** | Depth of field (rotateX 25–30°, rotateZ −8°, rotateY −14°, heavy blur off-focus, slow drift), with a small white line + a big glowing bold title or number on top. Dark and blue-tinted |
| **Big number scene** | A dark navy backdrop, a small caps label over a huge counting number (the first digits in brand blue, the rest grey-white) |
| **3D object + light beam** | A glossy blue 3D icon/product lit by a diagonal beam, with the title partly behind the object |
| **Light minimal break** | A `#F1F1EF` background with big solid blue dots (`#1458C8`) on flowing rounded black outline paths, items along the path, the camera panning down. Or a big faint word behind a single blue button |
| **B&W cut-out + bold text behind** | A desaturated cut-out on a white card with black letterbox bars, with bold blue condensed caps behind it |
| **3D fly-through** | Over colourful timeline blocks, with a big word partly behind a block |
| **Full-screen UI on a dark gradient** | The recording in a rounded card with a thin mint border, on black with a dark-green (or brand) radial glow. Handwritten labels (Caveat, mint/pink) with curved arrows |
| **Speaker PiP bubble** | A ~360px circle at the top right with a 6px magenta ring (`#E04BC4`), during long graphics |
| **Social/UI mock** | The clip inside a white social-post frame, with a cursor tapping |
| **Recap diagram** | A thin white circle around a central total card, with small white label pills on the circle |
| **CTA** | A white pill button ("Follow" / "Order now") at chest level. The cursor taps it (press 0.95) and the label flips to confirmed |

**Transitions:** mostly hard cuts on the beat; a pixel-mosaic dissolve on the hook; circle wipes; 3D camera moves; blur-pushes.

## 3. Half-screen layouts

- **Split hook:**
  - The top ~60% is a designed title card: a navy `#081860` → `#040A2A` gradient, large glowing arc lines, two glass icon chips, a two-tone title (white + sky blue `#58B8E8`), a dark pill, and a small stat card with a blue icon dot.
  - The speaker sits below, in a card with rounded TOP corners (~70px) and a glowing sky-blue top edge.
- **50/50 hard split:**
  - Two full-width halves (0–956 / 964–1920), a 6–8px white seam, and a mint pill centred on the seam.
  - Alternate which half holds the speaker.
- **Both halves UI:** two screens, with the speaker as a small PiP inside one.

## 4. Sound (measured from the references)

- **Music:** an original beat-driven bed throughout.
  - ≈ 110–120 BPM and kick-led for tech/explainer videos; a culturally fitting groove for product/fashion.
  - About 16–18 dB under the voice, ducked under speech, lifting in the gaps.
- **Sub-boom / low impact** on every big reveal, every number reveal and every new B-roll type (~6–10 per minute).
- **Whoosh / swish** on camera moves, 3D pushes, text slides and card entrances.
- **UI click + bright ding** on cursor taps and buttons.
- **Digital crackle** under the pixel-mosaic transition, and optional soft ticks under count-ups.
- **Mix:** stereo, panned with the motion; master ≈ −14 LUFS, peak ≤ −1 dBFS; the voice always on top.

## 5. Captions behind the person (procedure)

1. Install rembg with `pip install --break-system-packages "rembg[cpu]"` and use the session `new_session('u2net_human_seg')` (the model comes from GitHub releases).
   - It takes ~1 s per 1080x1920 frame on CPU, so run it only for the frames that carry behind-captions or behind-cards.
2. Use `only_mask=True`, feather 1–2px, and build RGBA person frames for those ranges.
3. **Layer order:** graded video → caption/card → person cut-out → face flower (if hiding a face) → subtitle pills.
4. If the person fills the frame width, put the text behind the head/shoulders at the top rather than the chest, so part of it stays readable.

## 6. Analyzing new references for this style

- 1-fps contact sheets with timestamps.
- Full-res key frames at layout changes.
- Colour sampling of the saturated pixels.
- A cut list from HSV histograms.
- Spectrograms with cut markers, and band-energy peaks (30–110 Hz booms, 5–12 kHz whooshes) to map the SFX.
