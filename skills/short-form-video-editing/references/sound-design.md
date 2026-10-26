# Sound design (three-pass)

Section 3 of the house style. User corrections in `SKILL.md` override anything here. Synthesis recipes are in [procedures.md](procedures.md).

## General rules
- **Sound emphasizes motion:** whooshes = movement, textures = events, risers & hits = anticipation.
- Music runs under the whole reel, ducked under speech, with SFX on top.
- One loudest impact per scene. The whoosh peaks on the fastest frame.

## Apple UI sound set (UI over footage; measured from the references)
- Pure UI scenes are SFX-led, with no music or only a very soft ambient bed.
- A soft glossy "bloop" pop (a sine chirp with a quick pitch glide, 60–120 ms) on every appearance and every morph step.
- Glass taps/clicks on buttons, a sparkle/shimmer on reveals, and coin clinks for money/wallet moments.
- An airy whoosh on big scale changes and fly-outs, and a short low swoosh on the final exit.
- Close and clean: little reverb, tuned to one key, never harsh.

## Cinematic sound set (narration / story videos, correction 19)

### Music
A cinematic score, not a pop groove.
- A piano motif + a warm string/choir pad + a low pulse (soft 8ths) that builds.
- Soft taiko/low toms only in the climax.
- No 80s synth arps, claps or bright hi-hats.
- **Structure:** quiet intro → build → near-silence before the turning point → full swell → resolve on the end card.

### SFX
Sparse and deep, with long natural tails. Nothing literal or cartoonish.
- One braam + sub-drop on the turning point.
- Reverse swells into 2–3 key reveals.
- Soft air transitions on chapter changes.
- A faint shimmer, only on the title and the end card.
- An atmospheric bed.

## The three passes (footage reels)

1. **Whooshes:**
   - Deep voice by default.
   - Hollow/futuristic for slides and half-screen cards.
   - Organic wind for slow moves.
   - Synthetic/spacey for full-screen in/out.
   - Short ones for small slides.
2. **Textures:** a pop on text; a UI click on tiles/logos; a sci-fi click on UI changes; gears/keyboard for typing; a camera click on cuts/flashes; a success reward on the conclusion (footage reels only).
3. **Risers & hits:** a riser ~5 s after the hook, ending in a hit; risers into full-screens and the CTA. The riser ends on the transition frame.

## Levels

| Stem | Level |
|---|---|
| Whooshes | −12 dB (max −10) |
| Textures / pops | −6 / −7 dB |
| Risers | −5 dB |
| Music | per correction 12: ≈ −25 LUFS stem, ~10 dB under the voice, ducked ~4 dB more under speech, small 1–3 kHz dip |
| Voice | always on top |
| Master | ≈ −14 LUFS, peak ≤ −1 dBFS |

## Quality upgrades
- Stereo panning that follows the motion.
- Layered transient + body + tail (+ a sub-drop and shimmer on the reveal).
- Room reverb: pre-delay ~15 ms, 0.4–0.8 s, 15–20% wet; 1.5–3 s for cinematic hits. The exception is the close Apple UI pops.
- A Doppler feel on whooshes.
- No identical repeats: vary ±1–3 semitones and ±1.5 dB.
- SFX tuned to the music's key.
- On noise layers, a high-pass, a low-pass on harsh tops (> 8 kHz), and 2–5 ms fades.

## Never
- A whoosh on a pop, or a pop on a slide; a whoosh above −10 dB.
- Covering the voice.
- Mixed families on one stem.
- A plain generic music bed.
- Cartoon foley in cinematic videos.
