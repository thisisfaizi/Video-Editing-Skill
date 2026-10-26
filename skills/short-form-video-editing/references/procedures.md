# Procedures

Section 6 of the house style: how to build the pieces the corrections ask for.

## Real flower PNG
Used for face hiding (corrections 10–11). A user-supplied flower always wins.
1. scikit-learn ships a real dahlia at `sklearn/datasets/images/flower.jpg`. Crop it to x 150–465, y 70–375.
2. Upscale it 4× with EDSR, using `opencv-contrib-python-headless<5` and the model at https://raw.githubusercontent.com/Saafke/EDSR_Tensorflow/master/models/EDSR_x4.pb.
3. Cut it out with rembg u2net into a square transparent PNG.

Placement: diameter ≈ 1.3 × the Haar face-box width, centred 0.1 × width below the box centre, with a soft drop shadow and a ±3° sway.

## Face tracking
1. Run Haar `frontal_default` + `alt2` (with a profile + flipped-profile fallback) on every 2nd frame at 360×640, inside the on-camera ranges.
2. Keep boxes ≥ ~300px. This ignores faces on packaging and false hits on fabric.
3. Reject outliers with a ±12-frame median. Interpolate per shot, then apply Gaussian smoothing (σ ≈ 2).
4. Add manual keyframes every 2–3 frames where detection drops.
5. The flower lives inside the same transformed/clipped container as the video.
6. Check zoomed stills of the chin and hairline at every cut and exit.

## Colour sampling
For [§1A](captions-and-colour.md#1a-colour-theme-per-video-corrections-2122).
- **Face box:** OpenCV Haar.
- **Clusters:** `skimage.color.rgb2lab` (or OpenCV Lab) + `sklearn.cluster.KMeans(4)` on the outfit and background regions.
- **Skin filter:** Lab a* 8–25 and b* 10–30, at L 40–80.
- **Near-grey:** chroma < 8.
- **Contrast:** the WCAG relative-luminance ratio of the text colour against the mean of the caption area. The target is ≥ 4.5:1.

## Product cut-outs
Run rembg u2net on clear frames. Garments held against a plain wall cut best; on patterned tables, use photo tiles instead.

## Cinematic B-roll from your own footage
For correction 13.
1. Take the steadiest 2.4 s window (the lowest mean frame difference).
2. Crop 1.5–1.6× with lanczos, then slow it down and add a light unsharp:
   ```
   setpts=PTS/0.72,minterpolate=fps=30:mi_mode=mci:mc_mode=aobmc:vsbmc=1
   ```
3. In Remotion, add a blur-crossfade, a push-in, a light leak, grain, soft-focus edges, a vignette and a label.

## Original music: fashion / wedding
numpy/scipy synthesis:
- A dhol dagga (pitch-bent sine + click) and tilli (band-passed noise) in a swung chaal.
- An 808 on the chord roots, claps on 2 and 4, shakers.
- A Karplus-Strong santoor hook (an `lfilter` comb) with answer phrases, tumbi off-beats and a harmonium pad.
- Risers + booms into drops, a breakdown, and fills every 8 bars.
- Align the bar grid so the drops hit big visuals, and check the spectrogram for low-end mud.

## Cinematic score: narration
- A felt-piano motif (soft attack, low-passed at ~3 kHz, long reverb).
- A detuned saw/string pad through a slow low-pass, plus a choir-like vowel pad (formant band-passes at ~700/1200 Hz).
- A low pulse in 8ths that enters on the build.
- Taiko-style low toms only in the climax.
- Align a bar line to the turning point, and leave 0.5–1 s of near-silence before it.

## Cinematic SFX recipes (fallback when no recorded samples)

| Sound | Recipe |
|---|---|
| **Braam** | 3–4 detuned saws on a low power chord (A1/E2/A2) through a low-pass sweeping 1600 → 180 Hz, tanh saturation, 3 s decay, + a sine sub-drop 60 → 30 Hz |
| **Reverse swell** | the reverb tail of a soft piano/pad chord, reversed, 1–1.5 s, ending exactly on the reveal frame |
| **Air transition** | pink noise band-passed 200–4000 Hz with a slow centre sweep, a sin² envelope of 0.8–1.2 s, a wide stereo pan, low-passed at 6 kHz, 2 s reverb at 25% wet |
| **Shimmer** | 3–4 soft high sines (an octave + fifth stack) with 1.5 s decays and reverb, very quiet |
| **Atmos bed** | brown noise low-passed at 400 Hz + very soft filtered wind, −35 dB |

## Apple UI pops

| Sound | Recipe |
|---|---|
| **Bloop** | a sine with an exponential pitch glide (e.g. 500 → 900 Hz up to appear, 900 → 500 Hz down to dismiss) over 60–120 ms, 3 ms attack, fast decay, plus a tiny 4 kHz click. Vary the pitch per element |
| **Shimmer** | 3–4 detuned high sines with fast decays |
| **Coin clink** | two inharmonic partials (~2.2 and 3.1 kHz) with a short decay |

## Analyzing new references
- Contact sheets at 4–8 fps for short motion clips (1 fps for long ones), with timestamps.
- Zoomed crops of the moving element across consecutive frames, to read the stagger, blur and overshoot.
- Colour sampling, and spectrograms to map the SFX.
