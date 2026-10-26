<!--
  Original source, kept unchanged as the provenance record for this repo.
  The installable skills live in ../skills/. Edit those, not this file;
  when the house style gets a new version, add a new dated file here.
-->

VIDEO EDITING SKILL — complete (version 17 Oct 2026)
Claude ke liye instruction: Yeh file meri poori video editing house style hai. Is chat mein har video edit isi file ke mutabiq karo. Part 1 har edit ka DEFAULT hai. Part 2 (Creator-Explainer) sirf tab use karo jab main khud kahun "creator-explainer style mein". Mujhse Roman Urdu mein, "ap" keh kar baat karo.
Contents
Part 1 — Short-form video editing (default house style, corrections 1–22)
Part 2 — Creator-explainer style (opt-in only)

PART 1 — Short-form video editing (default house style)
Short-form video editing (house style)
Use this whenever the user asks to edit one of their videos (intro, outro, reel, short, talking-head clip, or a narration / biography video built from a script) or to create captions, on-screen animations or sound design for one. Communicate in simple English (Roman Urdu with "ap" when the user writes in it).
Output is built in Remotion (React). Default composition: 1080x1920, 30fps for reels/shorts; 1920x1080 for long-form intros/outros unless the user says otherwise.
Two styles. This skill is the DEFAULT style for every edit. A second style — the creator-explainer reference style (captions behind the person, white subtitle pills, glowing stat numbers, 3D-tilted B-roll, 50/50 splits) — lives in the separate creator-explainer-style skill. Use that style ONLY on the video where the user explicitly asks for it ("is style mein", "behind-me captions wala", the reference shorts style). Never mix it into other edits.
Which motion language:
Talking-head and product reels: UI overlays use the Apple liquid-glass / Dynamic-Island motion (section 2A).
Narration / biography / story videos with no footage (a script plus a voiceover, such as the Sadie Sink video): use the premium cinematic language (section 2C). Never build these as light Apple-UI scenes; the user called that "weird".
Premium bar (applies to everything): the result must look like a Netflix / Apple TV documentary title sequence or a high-end brand film. If any frame looks like a kids' explainer, a meme edit or a toy, it is wrong (corrections 16–20).
Colour theme (every video): Claude picks the best theme itself, matched to the speaker's outfit and the background, and uses the soft tonal gradients from the approved style boards (corrections 21–22, section 1A).

USER CORRECTIONS — never repeat these mistakes
These come from the user's own feedback on earlier edits. They override anything else in this file.
"Edit karo" = deliver the COMPLETE finished video. Do not send a plan and wait for approval. Analyze, build, render and send the final MP4 in the same turn. Open questions go in the final message, after the video.
Never black out the bottom of the frame on footage videos. No dark panels or heavy dark gradients behind animations. The real video must stay visible around every UI element.
Half-screen = the speaker (or the product video) in one half, the animation in the other half.
The video shrinks into a rounded card in the top half: clip-path inset about 120px from the top and 60px from the sides, ending at about y 940, radius ~48, with a thin white border and a soft shadow.
The bottom half shows the same video blurred (light blur, barely darkened, never black), and the animation sits there.
UI glass = Apple liquid glass, motion = Apple UI motion (section 2A) for UI over footage.
Clear, refractive glass, not dark smoked glass.
iOS squircles, and one container that morphs between states.
Letter-by-letter blur text, springs with a small overshoot, motion blur on fast moves.
"Same exact" as the references in look and timing, with original content.
Every animation must be unique and calm, never rushed. Each element gets its own entrance; never the same move for everything. Elements hold on screen 0.6–1.5 s (1.2–2.5 s in cinematic videos). Nothing snaps in and out without a morph, blur or mask.
Captions sit clearly BELOW the face, never next to it, and are fully readable. Same caption structure (small sans words + one big hero word), with the fonts and placement in section 1.
Sound effects must sound rich and premium, never thin, "beepy" or cartoonish. Follow section 3 on every edit. UI motion over footage gets the Apple UI sound set; cinematic videos get the cinematic SFX set (section 3, correction 19).
Keep this skill current.
At the start of every edit, check the "Trends log" date in section 5. If it is more than ~4 weeks old, do a quick web search for current short-form editing and sound trends, use what fits, then propose a skill update (the user saves it).
When the user gives new reference videos, analyze them frame by frame (contact sheets, zoomed key frames, spectrograms) before writing any learnings.
Every reel gets the full package by default — product reels included: premium text, motion graphics (Apple-style UI over the video), full-screen B-roll, a full-screen animation, half-screens, and background music. Leave a layer out ONLY when the brief for that specific reel says so, and only for that reel.
Face hiding must have zero leaks. When asked to hide someone's face, the flower covers it in EVERY frame the face is visible: through hard cuts, fast moves, looking down, and edge exits. Track per shot, add manual keyframes, and check zoomed stills of chin and hairline at every cut and exit (section 6).
The face flower is a REAL flower photo, small — only face-sized.
Never a drawn/SVG/cartoon flower ("guffy").
Use a real cut-out PNG (section 6), diameter ≈ 1.3 × the Haar face-box width, centred 0.1 × width below the box centre.
Soft drop shadow, gentle ±3° sway. Hard on/off at cuts.
Music must be unique and grab attention.
Compose an original track that fits the content, with a drop on the first big visual and variation. Wedding-season / Pakistani fashion: dhol chaal, 808, santoor-style hook, tumbi stabs, harmonium, claps. Biography/story: cinematic score (section 3).
About 10 dB under the voice: music stem ≈ −25 LUFS against a −14 LUFS master, ducked ~4 dB more under speech, with a small 1–3 kHz dip.
Skip music only if THAT reel's brief says so.
Full-screen B-roll must look clearly different from the main footage.
Without separate clips, build cinematic cutaways: 1.5–1.6× macro crop, 0.72× slow motion (minterpolate), warmer/contrastier grade, moving light leak, film grain, soft-focus edges, a small lookbook label.
Tell the user real stock/AI B-roll can be swapped in if they upload it.
Check that an AI asset can actually be downloaded here before spending credits. Pollo, Higgsfield, YouTube, Pexels, Pixabay, Unsplash, Wikimedia and Hugging Face are blocked. npm, PyPI, raw.githubusercontent.com and GitHub release downloads work.
The creator-explainer style is opt-in only. Apply it only where the user asks for it; every other edit uses this default style.
Colour must feel premium — never loud, saturated or "gradient-y" (Sadie Sink v2 feedback: "premium feel ni ha color ma"; v1: "itna gandha gradient background").
Use ONE restrained palette per video (section 2C palette for narration; section 1A theme for footage videos):
Lifted warm blacks (#0C0B0A–#121110), never pure #000.
Off-white text #EDE8DF.
ONE muted accent at ≤ 55% saturation (champagne #CDB38A, dusty rose, steel blue, or the outfit-matched accent from section 1A).
Finish with one cinematic grade over the whole frame: soft halation/bloom on highlights, slight teal shadows / warm highlights, 35mm grain at 4–6% opacity.
Never:
Saturated scene washes (bright red, royal blue).
Bright yellow spotlight cones.
Colourful CSS gradients as backgrounds.
Rainbow / RGB effects.
Fake "gold" made from a CSS gradient with a light sweep.
Different colour themes per scene.
Text must look premium and editorial, not "YouTube bold" ("baki text bhi premium ni ha").
Do NOT set everything in Montserrat 900 all caps with glow shadows.
Use a refined pairing:
A high-contrast display serif for hero words: Cormorant Garamond 500–600 / Playfair Display 500 / Instrument Serif / DM Serif Display, often in mixed case or italic.
A clean light sans for labels: Inter / Manrope 400–500, uppercase only for tiny labels with wide tracking 0.25–0.4em.
Fewer words on screen, more negative space, at most 2 type sizes per frame, no heavy drop-shadow or outer glow (a faint 0 2px 12px rgba(0,0,0,.35) at most).
Animate with mask reveals (lines rise from behind a clip edge), slow tracking expansion (letter-spacing 0.02 → 0.08em over 1.5 s), soft blur-to-sharp, and gentle opacity. Avoid scale slams and bouncy pops.
Narration captions: sentence case, Inter 500 at 46–50px, white at 70% with the spoken word at 100%. No gold-yellow uppercase karaoke.
Animation must be cinematic, never cartoon-like ("animation style cartoon like lagh raha ha").
Banned in cinematic videos:
Spring scale-slams (1.5 → 1 with overshoot) and bouncy pops.
Camera shake on many beats.
White flash frames and RGB glitch.
Shockwave rings and endlessly spinning objects (spinning star, spinning globe).
Pins that drop and bounce.
Flat vector clip-art (flat leaves, flat waves, cartoon stars, star bursts / rays).
Toy-like primitive 3D models (extruded flat shapes, plain boxes, a flat blue whale tail, toy clapper, toy marquee, toy mic).
Use instead:
Slow camera moves: dolly / push-in 2–4% per scene, gentle parallax between 3–4 depth layers.
Long eases: cubic-bezier(0.16, 1, 0.3, 1) over 0.8–1.4 s, overshoot ≤ 2%.
Light-driven reveals: a light sweep across a surface, exposure bloom, soft focus pulls / depth of field.
Match cuts and soft blur dissolves.
Real textures: film, paper, brushed metal, fabric, smoke, bokeh.
At most ONE big impact moment per video (the story's turning point), with at most a 3–4 px camera nudge.
3D must be photoreal or not used:
Physically based materials with real HDRI lighting (three.js repo HDRIs on raw.githubusercontent.com work).
Real glTF models (KhronosGroup glTF-Sample-Assets / three.js example models on GitHub) when they fit the subject.
Soft contact shadows, depth of field, slow camera, no spinning.
If no realistic model exists for a subject, show it with typography + light + texture (or the user's licensed photos), never with a home-made toy model.
Cinematic SFX must be sparse, deep and real-sounding ("sound effect ni axha").
Never in cinematic videos:
Literal cartoon foley: claps, splashes, clock ticks, boings, bloops, coin clinks, glitch buzzes.
A whoosh + hit on every cut.
Harsh synthesized white noise.
Per 60–75 s use about:
1 main impact (sub-drop + low boom + braam with a 2–3 s reverb tail) on the turning point.
2–3 reverse-swell risers into key moments.
4–6 soft air transitions (low-passed below ~6 kHz, wide stereo, 1.5–2.5 s reverb at 25% wet).
A quiet atmospheric bed (room tone, distant wind, soft shimmer) in the gaps.
Prefer real recorded CC0 samples (check GitHub / npm for CC0 SFX packs, or a library the user supplies) over synthesis. When synthesizing, follow the section 6 cinematic recipes and always layer sub + body + air with a natural tail.
Self-check against the premium bar before rendering. Look at a contact sheet of 8–12 stills and ask of each: "Would this sit in a Netflix documentary title sequence?" Replace anything that looks childish, toy-like, meme-like, overcrowded or over-coloured BEFORE the full render, and listen to the SFX stem on its own once.
Pick the best colour theme yourself on every video — matched to the speaker's outfit and the background (user, 2026-10-17: "khud sa best color theme kia kero, text ki outfit or background ka sath").
Before designing, sample the outfit and background colours (section 1A) and build ONE theme: a neutral base, a text colour, ONE accent that harmonizes with the outfit, and one glow/gradient tone.
Captions, hero words, UI glass tints, widgets, labels, B-roll labels and name tags all use that theme. Never default to gold when it clashes with the outfit or the background.
Readability first: captions and labels reach ≥ 4.5:1 contrast with the pixels behind them. Fix low contrast by changing the accent's lightness or adding a soft dark radial glow, never a box.
Name the chosen theme in one line in the final message (e.g. "Theme: dusty rose + off-white, matched to your pink dupatta and the warm wall").
Gradients like the style boards — soft, tonal and totally professional (user: "waisa hi color gradient use kia kero or haar cheez totally professional ho").
Gradients stay in ONE hue family and vary only in lightness/opacity (section 1A tokens): warm charcoal radials, white → light-accent text gradient, clear-glass sheen, hairline rules fading at both ends, soft radial glows, vignettes.
Never two saturated hues together, rainbow, neon or hard-edged gradients.
Professional finish on every frame: a 90px safe margin, elements aligned to a grid, consistent corner radii, shadow direction and type scale, at most 2 font families per frame, no overlapping or cut-off text, no stretched or pixelated images. Check this on the contact sheet (correction 20).

THE GOLDEN RULE: inspiration is a reference, never a copy
The inspiration teaches the STYLE and QUALITY level: fonts, colours, glow, placement, motion and sound logic.
NEVER copy-paste an inspiration design, its text, its numbers or its layout one-to-one.
For every video: analyze what THIS speaker is saying, then design ORIGINAL captions, animations and UI that explain THIS content.
Every video should feel different in content but the same in style.

THE MANDATORY LAYERS (every video and reel — correction 9)
Text: captions on the key moments, plus a name tag when a name is known.
Full-screen animation: the frame is fully replaced by an animation for a short beat, 1.5–4 s. Build it as:
an Apple-style UI scene (section 2A: light canvas, morphing squircle widget, letter-by-letter title), or
a full-screen metaphor scene (sections 2B/2C).
Full-screen B-roll: 2–4 cinematic cutaways (correction 13), 2.4–3.4 s each, on words they illustrate or over shaky handling.
Half-screen animation: correction 3. Product reels: photo tiles of the products or a spec widget in the bottom half.
PNG/logo/product UI over the video: real PNGs, logos or product photo tiles as Apple-style liquid-glass UI on the exact word. Examples:
A "Save this reel" pill that morphs to "Saved ✓".
A Dynamic-Island pill that grows into a product card.
Feature pills, or a widget with a count-up.
Satellites of small round icons.
An "Order now" glass button with a tap and progress ring.
Music (correction 12) and the three-pass sound design.
Narration videos with no footage replace layers 3–5 with section 2C scenes (real photos the user supplies, photoreal 3D, typography scenes).
Guideline amounts for a 60–90 s reel: full-screen animation 1–2; B-roll 3–4; half-screen 2; UI overlays 5–7; captions ~15–22. Never stack two full-screens back to back. Keep the speaker on screen during the hook.
Logo and PNG rules: official or user-supplied logos (simple-icons npm as fallback), never distorted or recoloured; glow and frame go AROUND them.

0. Order of work (always)
Defaults when something is missing:
No name/title → leave the name tag out and say so in one line.
No sound library → look for CC0 recorded samples first; otherwise synthesize each sound to its library role and level, on family stems.
Unclear transcript words → best guess, listed at the end.
Technical settings:
Files under 30 MB: 2-pass x264, video kbps ≈ (29 × 8000 / duration s) − 160, AAC 160k.
Transcription: sts-whisper-small (ONNX) + @huggingface/transformers (install --ignore-scripts).
Use 6–8 s chunks cut at low-energy points.
Options: no_repeat_ngram_size: 3, return_timestamps: 'word'.
Language 'urdu' (transliterate to Roman Urdu) plus a 'translate' pass; English voiceovers use language 'english'.
Narration voiceover when none is given: Kokoro TTS (kokoro-onnx, model files from the thewh1teagle/kokoro-onnx GitHub release; voice af_heart), then word timings from Whisper.
Remotion render on this machine: --concurrency=2 max (2 cores). Long renders go in two frame ranges (--frames=0-1199, --frames=1200-…) joined with the ffmpeg concat demuxer, so one crash doesn't lose everything. Guard every .find() on time ranges with a fallback.
Shell pitfall: pkill -f/pgrep -f match their own command line — use pkill -f "[p]ython3 x.py" or check the log.
Steps:
Assets: 1080x1920 H.264 with a light warm grade, plus a lightly blurred copy for half-screens. Remotion public files must be copies/hardlinks, not symlinks.
Analyze: hook, segments, key words/numbers/brands/products, emotion, every cut (HSV-histogram Bhattacharyya > 0.25) and a contact sheet. Sample the outfit and background colours and build the theme (section 1A).
Plan the layers with timings tied to the words; if the user linked a doc, add the plan as a new tab.
Build: captions → half-screens → full-screens/B-roll → UI → music → whooshes → textures → risers & hits → mix (≈ −14 LUFS, peak ≤ −1 dBFS).
Check stills before the full render (face, captions, nothing black, safe area, all layers, theme contrast, alignment), including mid-morph frames, and run the premium self-check (correction 20).
Learn from corrections and add them here.

1. Captions (talking-head)
Placement: below the face.
Caption centres:
Plain talking head: y ≈ 1235.
Seated product reels: y ≈ 1260–1330.
UI over speaker: y ≈ 1010 (UI from y 1140).
Half-screen: y ≈ 975–1060.
Full-screen/B-roll: y ≈ 1450.
Keep clear of the bottom ~18% and the right-side buttons.
No boxes: use a layered text shadow (0 0 2px rgba(0,0,0,.55), 0 2px 6px rgba(0,0,0,.55), 0 8px 28px rgba(0,0,0,.55)) and a soft dark radial glow.
Structure:
One caption = a 3–7 word phrase, 2–3 stacked lines, exactly ONE hero word.
Layouts vary: center; left (x 100, lines stepped ~38px); caps (small lines uppercase 31px, letter-spacing 0.2em).
Put captions on the hook, product names, key benefits, colours and the CTA; skip where a UI card already says it.
Fonts:
Small words: Plus Jakarta Sans 700, 44px, in the theme's text colour (800 for caps).
Hero word: DM Serif Display Italic (or Cormorant Garamond Italic 600) in the theme accent (section 1A); muted gold #D9B26A only when it suits the outfit and background. Size = min(128, 900 / (chars × 0.5)).
Load fonts with FontFace inside delayRender.
Animation:
Hero words and titles: the Apple letter-by-letter blur reveal (section 2A, move 7).
Small lines: rise 18px + fade over ~0.4 s, staggered 0.08 s.
Exit: letters blur out left to right in ~0.35 s.
Grade: warm, cinematic, slightly darkened, soft vignette (cool-leaning when the theme is cool).
Narration-video captions follow correction 17.

1A. Colour theme per video (corrections 21–22)
Sample (small script, before building):
Face box from Haar on 6–10 frames spread across the video.
Outfit region: from the face bottom + 0.2 × face height down to + 2.6 × face height, 2.2 × face width wide. Background region: the frame minus the rembg person mask (u2net_human_seg), or the outer 15% of the frame when rembg is too slow.
k-means (k = 4) in CIELAB per region. Drop skin tones and near-greys from the outfit clusters; the biggest remaining cluster is the outfit colour (keep the second one as a backup). The median of the background is the backdrop colour; its warmth is b* > 8 warm, < −4 cool.
Measure the local luminance where captions sit (y ≈ 1150–1350) for the contrast check.
Product reels: also sample the product's own colour from a clear frame.
Build the theme:
Text: off-white #F5F2EC on warm backdrops, #F3F5F8 on cool ones; secondary text at 70%.
Accent (hero word, key UI, hairlines, progress rings): the outfit (or product) hue with saturation 35–55% and lightness 68–78%, so it reads on video and stays premium.
Near-neutral outfit (black, white, grey, beige): champagne #CDB38A on warm backdrops, ice blue #A9C7E8 on cool ones.
If the accent is within ~20° hue and similar lightness of a big background area, it disappears: shift its lightness or use the outfit's second colour.
Glow / gradient tone: the accent at 25–35% opacity, or the warm/cool neutral.
Examples:
Pink / rose outfit → dusty rose #D9A0AE hero, off-white text, soft rose glow.
Teal / green hijab → sage #9CCBB8 (or champagne against warm walls).
Maroon / red → warm champagne #D8B98A (never bright red text).
Navy / blue → ice blue #A9C7E8.
Black → champagne #CDB38A.
White / cream → soft bronze #C49A62 with a slightly stronger text shadow.
Products → the product's own colour, desaturated as above.
Narration videos use the section 2C palette, with the accent chosen from the subject (photos, era, mood).
Gradient tokens (the approved look from the 2026-10-17 style boards):
Warm cinematic base: radial-gradient(ellipse 90% 60% at 50% 38%, #1A1714, #0C0B0A 72%).
Monochrome set: radial-gradient(ellipse 80% 60% at 50% 40%, #3B3B3D, #121213 75%).
Dark-tech: linear-gradient(180deg, #05060A, #0B1430) + a radial glow of the accent at ~35%.
Bold-word text gradient (creator style): linear-gradient(180deg, #FFFFFF, <light accent>), e.g. #FFFFFF → #C8C8F8.
Liquid-glass sheen: linear-gradient(135deg, rgba(255,255,255,.22), rgba(255,255,255,.06) 45%, rgba(255,255,255,.12)) + 2px white rim highlight + soft drop shadow.
Hairline rule: linear-gradient(90deg, transparent, <accent> at 90% opacity, transparent), 1–2px.
Soft glow behind text: a radial of the accent (or black for legibility) at 15–45%, blur 20–40px.
Vignette: radial-gradient(ellipse 80% 62% at 50% 45%, transparent 55%, rgba(0,0,0,.55)).
Light leak: a screen-blended radial of a warm tone (255,170,90) at ≤ 85% that drifts across the frame.
Grain: 4–6% for cinematic scenes, 12–18% at overlay blend on footage.

2. Animation style
2A. Apple UI motion (UI over talking-head / product footage)
Learned on 2026-10-15 from 6 reference clips: an Apple-style text animation, an Apple Wallet UI animation, a "UI now in motion" widget morph, an Apple liquid-glass animation, and two After Effects motion tutorials.
Look
Canvas for full-screen UI scenes:
Clean light backgrounds: #F7F7F7 with faint grid lines (#ECECEC, ~170px spacing), #F2F2F2, or #E9EAEE.
Optionally a white rounded device card (radius ~60px) with a soft cyan halo around it (#CFEFFF, blur ~80px), or a halo in the theme accent.
Floating devices get a soft elliptical ground shadow underneath.
Shapes: iOS squircles (corner radius ≈ 22–25% of the short side; continuous corners via an SVG superellipse path when possible). Pills fully rounded.
Widgets:
Either dark cards #1C1C1E with ONE vivid accent (electric yellow #FFF200 with a soft glow, wallet blue #2FA8FF, the product colour, or the theme accent) and white text in SF-style sans,
or white cards #FFFFFF with black text.
Large soft shadows: 0 30px 60px rgba(0,0,0,0.12), 0 8px 20px rgba(0,0,0,0.08).
Liquid glass (pills, buttons, lenses, cards over video):
Nearly clear, no dark tint: light backdrop blur (4–8px) + saturate 180%.
The content behind is REFRACTED: magnified ~1.12–1.2× inside the shape and bent at the rim.
Bright specular rim (1.5px, white 90% at top-left fading to 0), soft inner shadow bottom-right, a faint chromatic fringe at the edges, soft drop shadow.
Labels in black/white SF-style sans 600.
When legibility over busy video needs it, add at most a 10–15% white or dark wash.
Type:
UI labels: Inter / SF Pro Display 600–700.
Titles: geometric caps (Montserrat 700, tracking +0.02em, ~78px).
Accent words in lavender #8E8CF0 (or a lavender→periwinkle gradient); sub-lines in mint #2BE3A0 — or the theme accent when lavender/mint clash with the outfit.
Icons: real app/brand/product icons as squircle tiles; small round "satellite" icons (coins, brand marks) floating around a card.
Moves (each element picks one; timings measured from the references)
Grow from a dot: a ~20px dot springs into a squircle widget (overshoot to ~1.08, settle) in 0.3–0.4 s; the content blurs in (10px → 0) starting 0.1 s later.
Shape morph (Dynamic Island): ONE container continuously animates width, height, corner radius and colour between states.
Sequence example: app icon → pill with a label → big card → smaller card → pill → dot → gone. Never a cut between states.
Each morph 0.35–0.5 s on a spring (damping ~14, stiffness ~180, small overshoot).
The outgoing content blurs out and the incoming content blurs in (8–12px) while the container morphs.
Hold 0.6–1.2 s per state. The background can shift (white → #F2F2F2) during a morph.
Live widget data: numbers count up inside the widget (37% → 52%), progress lines draw, a glowing accent shape (bolt, bar) grows.
Satellites: small round icons pop in around a card (scale 0 → 1.1 → 1 with blur 6 → 0, staggered 0.1 s) and float ±6px.
3D tilt + colour sweep: the card tilts ±10–15° (rotateY/rotateZ) while a soft glow in the theme's tones sweeps across it, then settles flat.
Motion blur on fast moves: directional blur proportional to speed (@remotion/motion-blur CameraMotionBlur, or several sub-frame copies); exits are quick fly-outs (down/rotate) with blur.
Letter-by-letter blur text:
Split the line into letters. Each letter goes opacity 0 → 1, blur 10px → 0, scale 1.15 → 1 (or x +8px → 0), staggered 35–45 ms left to right (~0.45 s for 11 letters).
Hold ~1 s; exit letters blur out in the same left-to-right order in ~0.35 s.
A logo above blurs in (scale 0.9 → 1); a small app-icon tile blur-pops below.
Glass lens: a liquid-glass pill/lens slides across content (icons, product, video), refracting it as it moves.
It morphs into a circle with a progress ring for "download / order".
Finale: the whole scene frosts (blur ~20px + 60% white) while the glass button stays sharp.
Easing: never linear — springs, or cubic-bezier(0.2, 0.9, 0.1, 1) for moves and (0.4, 0, 0.2, 1) for fades.
Remotion build notes
Morph container = a single absolutely positioned div whose width/height/borderRadius/background come from spring()/interpolate(); child layers per state cross-fade with filter: blur().
Liquid-glass lens = a clipped copy of whatever is behind it (render the same video/scene again inside the shape), scaled 1.12–1.2.
Add an SVG feDisplacementMap (radial gradient map) for rim bending, plus rim-highlight and inner-shadow layers on top.
Don't rely on backdrop-filter: url().
Squircle = SVG superellipse path or border-radius ≈ 23%.
Check stills mid-morph (the in-between frames are where it looks cheap if it does).
2B. Other full-screen motion scenes (from the two tutorials)
Monochrome 3D-camera scenes with one accent:
Grey/black gradient set with vignette.
Rounded dark icon tiles with yellow line icons slide through space as the 3D camera moves.
A white squircle card ("Be productive") with corner brackets.
A black road path curling to a flag for goals (with a quick red tint flash).
A 3D clock or coin for time/money with big bold white type ("time is / money").
Handwritten priority: crossed-out handwritten words (TOMORROW / SOMEDAY / LATER / NEXT WEEK) around one yellow sticky note ("NOW").
Halftone B&W collage:
Paper/halftone texture, and a photo card with chamfered corners that splits apart to reveal a 3D object (brain, eye) with soft contact shadows.
Thin construction lines and a rotating spotlight cone beam on a dark set.
The camera pulls back to reveal the context.
Small light text + one huge bold word ("he plays with his / mind").
Still available when they fit:
Dark-tech cutaways (#05060A → navy, radial glow, one accent).
Object metaphors: hourglass = time, chess piece = standing out, chain = connection, iceberg = hidden depth, bulb = idea, tangled → straight thread = chaos → system, bridge = gap, key = unlocking, elastic band = flexibility, globe = worldwide.
Product reels: accent = product colour (rose #E0457B, navy #4C6BFF, desaturated per section 1A), muted gold #D9B26A for quality/CTA when it suits the theme.
The UI follows the words and appears on the exact spoken word; data and numbers are always real.
2C. Premium cinematic language (narration / biography / story videos)
Learned 2026-10-15 from the Sadie Sink video. v1 used Apple-UI light scenes and was rejected as weird and cheap. v2 used a dark stage, gold Montserrat slams and home-made 3D props; the structure was OK, but the colour, text, animation and SFX were judged not premium and cartoon-like. Corrections 16–19 are the rules; this section is how to build it.
Palette (one per video):
Base: warm charcoal #0C0B0A → #161412 with soft volumetric light (a large, very soft beam at 6–10% opacity, white-warm, not yellow).
Text: off-white #EDE8DF; secondary text at 55–65% opacity.
ONE muted accent: champagne #CDB38A, or a subject-led tone (desaturated teal #6E8C8A, dusty rose #B9877F, steel blue #7D8FA3).
Finish: grade, halation, grain 4–6%, gentle vignette.
Typography:
Hero lines: Cormorant Garamond 500/600 or Playfair Display 500, 110–170px, mixed case, tight tracking (−0.01em). Italic for one emotional word.
Labels: Inter/Manrope 500, 22–28px, uppercase, tracking 0.3em, 60% opacity, often with a thin 1px hairline rule that draws in beside them.
Years and numbers: the serif in lining figures, large and thin, or outlined (1px stroke) with the fill fading in. No CSS-gradient gold.
Layout: editorial — left-aligned or centred blocks with generous margins (≥ 90px), lots of negative space, never more than ~6 words visible besides captions.
Scene types that read as premium:
Title card: name in large serif, a thin rule draws across, a small label fades in, soft light passes over the letters.
Date / place card: big thin year with a slow focus pull, the place in small tracked caps; a real map texture (muted, low contrast) with a slow pan instead of a cartoon pin.
Photo scenes (when the user supplies licensed photos): Ken Burns push-in, depth-split parallax (rembg person matte in front of a blurred background), film frame / soft vignette, slow light leak.
Object scenes: photoreal 3D (real glTF + HDRI, PBR, DOF) on a dark set, the camera dollying slowly; or a still-life made of light and texture (stage curtain fabric, film strip, marquee bokeh) rather than a modelled toy.
Turning point: the ONE big moment — the frame drops to near black, a low braam/sub-drop, the key line reveals with a slow mask and an exposure bloom.
Montage: quick but smooth — 0.6–0.8 s per item with blur dissolves and consistent framing, years as thin serif numerals; no slams.
End card: name + one line, slow push-in, light sweep, fade to warm black.
Transitions: soft blur dissolves, light-wipe (a bright soft band crosses and reveals), match cuts on shape/position, dip to warm black on chapter changes. No white flashes, glitch or spin.
Pipeline notes:
Full-res 3D (three.js via @remotion/three, --gl=angle) is ~7 s/frame here, so pre-render 3D as transparent PNG stills/sequences at the needed size and composite them in 2D.
With ThreeCanvas frameloop="never", after async geometry/texture loads call useThree(s => s.advance)(performance.now()) and then continueRender in a requestAnimationFrame. Hooks must live in a component rendered inside the canvas.
Image-sequence files must be unpadded (element-N.png) or renamed to match the code.
Stills of photoreal products/backdrops: a plain three.js page (GLTFLoader + RGBELoader, ACES tone mapping, ShadowMaterial floor for contact shadows) screenshotted with Playwright Chromium (--use-gl=angle --use-angle=swiftshader) takes ~5–10 s per image. Real photo backdrops: render the three.js equirect panoramas (e.g. san_giuseppe_bridge_2k.hdr, kandao3.jpg, 2294472375_24a3b8ef46_o.jpg) as the scene background with a 60–65° FOV camera.

3. Sound design (three-pass)
General rules:
Sound emphasizes motion: whooshes = movement, textures = events, risers & hits = anticipation.
Music under the whole reel, ducked under speech; SFX on top.
One loudest impact per scene; whoosh peak on the fastest frame.
Apple UI sound set (UI over footage; measured from the references):
Pure UI scenes are SFX-led (no music, or a very soft ambient bed).
A soft glossy "bloop" pop (sine chirp with a quick pitch glide, 60–120 ms) on every appearance and every morph step.
Glass taps/clicks on buttons; a sparkle/shimmer on reveals; coin clinks for money/wallet moments.
An airy whoosh on big scale changes and fly-outs; a short low swoosh on the final exit.
Close and clean: little reverb, tuned to one key, never harsh.
Cinematic sound set (narration / story videos — correction 19):
Music: a cinematic score, not a pop groove.
Piano motif + warm string/choir pad + a low pulse (soft 8ths) that builds.
Soft taiko/low toms only in the climax.
No 80s synth arps, claps or bright hi-hats.
Structure: quiet intro → build → near-silence before the turning point → full swell → resolve on the end card.
SFX: sparse and deep.
One braam + sub-drop on the turning point.
Reverse swells into 2–3 key reveals.
Soft air transitions on chapter changes.
A faint shimmer only on the title and end card.
An atmospheric bed.
Long natural tails; nothing literal or cartoonish.
Whooshes: deep voice default; hollow/futuristic for slides and half-screen cards; organic wind for slow moves; synthetic/spacey for full-screen in/out; short for small slides.
Textures: pop on text; UI click on tiles/logos; sci-fi click on UI changes; gears/keyboard for typing; camera click on cuts/flashes; success reward on the conclusion (footage reels only).
Risers & hits: a riser ~5 s after the hook with a hit; risers into full-screens and the CTA; the riser ends on the transition frame.
Levels: whooshes −12 dB (max −10); textures/pops −6/−7 dB; risers −5 dB; music per correction 12; voice always on top.
Quality upgrades:
Stereo panning that follows the motion.
Layered transient + body + tail (+ sub-drop and shimmer on the reveal).
Room reverb (pre-delay ~15 ms, 0.4–0.8 s, 15–20% wet; 1.5–3 s for cinematic hits), except the close Apple UI pops.
Doppler feel on whooshes.
No identical repeats (±1–3 semitones, ±1.5 dB).
SFX tuned to the music's key.
High-pass, low-pass harsh tops (> 8 kHz) on noise layers, and 2–5 ms fades.
Master ≈ −14 LUFS.
Never:
Whoosh on a pop or pop on a slide; whoosh above −10 dB.
Covering the voice.
Mixed families on one stem.
A plain generic music bed.
Cartoon foley in cinematic videos.

4. Delivery checklist
Complete video delivered.
All layers present unless THIS reel's brief removed one.
Nothing black behind animations on footage; the video stays visible.
Colour theme picked from the outfit + background (section 1A) and named in the final message; captions and labels ≥ 4.5:1 contrast.
Gradients soft and tonal (section 1A tokens); every frame aligned to the 90px safe margin, consistent radii/shadows/type scale, nothing overlapping or cut off (correction 22).
UI over footage is Apple-style: clear liquid glass, squircles, continuous morphs, letter blur text, springs, motion blur on fast moves; mid-morph stills checked.
Narration videos use section 2C:
one muted palette and a grade;
editorial serif + light sans type;
slow cinematic moves;
photoreal 3D or none;
no slams, shakes, flashes, glitches, spins or clip-art.
Premium self-check passed on a contact sheet (correction 20).
Captions below the face (or sentence-case narration captions), readable, varied layouts.
Visuals original; real numbers, brands and products only.
Hidden face: real, face-sized flower in every visible frame (zoomed stills checked).
Original music about 10 dB under the voice; master ≈ −14 LUFS.
SFX stereo, layered, varied, sparse where cinematic; SFX stem listened to on its own.
Stills checked; file under 30 MB.

5. Trends log (update at least monthly — correction 8)
Last checked: 2026-10-15 (Apple liquid-glass UI motion added from user references; premium cinematic rules added from Sadie Sink feedback).
Apple liquid-glass UI and Dynamic-Island-style shape morphs are the current premium UI-animation look (user references, Oct 2026).
Captions as a highlighter on key moments only; first 3 s readable with sound off. (subclip)
Greenscreen-explain layout (presenter + supporting visuals swapped every 4–6 s) fits the half-screen layer. (Opus)
Documentary realism: slow push-ins, one consistent grade, light grain. (Opus)
Speed ramps / punch-ins on hook words, sparingly. (CapCut)
Audio-reactive glow on the logo or CTA. (Opus)
Stereo "flying through" UI whooshes; hit + riser stacks on section changes. (Artlist)

6. Procedures
Real flower PNG:
scikit-learn ships a real dahlia: sklearn/datasets/images/flower.jpg, crop x 150–465, y 70–375.
4× EDSR upscale with opencv-contrib-python-headless<5, model https://raw.githubusercontent.com/Saafke/EDSR_Tensorflow/master/models/EDSR_x4.pb.
rembg u2net cut-out → square transparent PNG.
A user-supplied flower wins.
Face tracking:
Haar frontal_default + alt2 (profile + flipped fallback) on every 2nd frame at 360×640 inside on-camera ranges.
Keep boxes ≥ ~300px (this ignores packaging faces and fabric hits).
±12-frame median outlier rejection; per-shot interpolation + Gaussian smoothing (σ ≈ 2).
Manual keyframes every 2–3 frames where detection drops.
The flower lives inside the same transformed/clipped container as the video.
Colour sampling (section 1A): OpenCV Haar for the face box; skimage.color.rgb2lab (or OpenCV Lab) + sklearn.cluster.KMeans(4) on the outfit and background regions; skin filter ≈ Lab a* 8–25, b* 10–30 at L 40–80; near-grey = chroma < 8. Contrast = WCAG relative-luminance ratio of the text colour against the mean of the caption area.
Product cut-outs: rembg u2net on clear frames (garments held against a plain wall cut best; on patterned tables use photo tiles).
Cinematic B-roll from own footage:
Take the steadiest 2.4 s window (lowest mean frame difference).
1.5–1.6× crop, lanczos, setpts=PTS/0.72,minterpolate=fps=30:mi_mode=mci:mc_mode=aobmc:vsbmc=1, light unsharp.
In Remotion: blur-crossfade, push-in, light leak, grain, soft-focus edges, vignette, label.
Original music (fashion/wedding): numpy/scipy synthesis.
Dhol dagga (pitch-bent sine + click) and tilli (band-passed noise) in a swung chaal.
808 on chord roots, claps on 2 and 4, shakers.
A Karplus-Strong santoor hook (lfilter comb) with answer phrases; tumbi off-beats; harmonium pad.
Risers + booms into drops, a breakdown, fills every 8 bars.
Align the bar grid so drops hit big visuals; check the spectrogram for low-end mud.
Cinematic score (narration):
Felt-piano motif (soft attack, low-passed ~3 kHz, long reverb).
Detuned saw/string pad through a slow low-pass, plus a choir-like vowel pad (formant band-passes ~700/1200 Hz).
Low pulse in 8ths that enters on the build.
Taiko-style low toms only in the climax.
Align a bar line to the turning point; leave 0.5–1 s of near-silence before it.
Cinematic SFX recipes (fallback when no recorded samples):
Braam: 3–4 detuned saws on a low power chord (A1/E2/A2) through a low-pass sweeping 1600 → 180 Hz, tanh saturation, 3 s decay, + sine sub-drop 60 → 30 Hz.
Reverse swell: the reverb tail of a soft piano/pad chord, reversed, 1–1.5 s, ending exactly on the reveal frame.
Air transition: pink noise band-passed 200–4000 Hz with a slow centre sweep, sin² envelope 0.8–1.2 s, wide stereo pan, low-passed at 6 kHz, 2 s reverb at 25% wet.
Shimmer: 3–4 soft high sines (an octave + fifth stack) with 1.5 s decays and reverb, very quiet.
Atmos bed: brown noise low-passed at 400 Hz + very soft filtered wind, −35 dB.
Apple UI pops:
Bloop: a sine with an exponential pitch glide (e.g. 500 → 900 Hz up for appear, 900 → 500 Hz down for dismiss) over 60–120 ms, 3 ms attack, fast decay, plus a tiny 4 kHz click; vary pitch per element.
Shimmer: 3–4 detuned high sines with fast decays.
Coin clink: two inharmonic partials (~2.2 and 3.1 kHz) with a short decay.
Analyzing new references:
Contact sheets at 4–8 fps for short motion clips (1 fps for long ones), with timestamps.
Zoomed crops of the moving element across consecutive frames to read stagger/blur/overshoot.
Colour sampling, and spectrograms to map SFX.

PART 2 — Creator-explainer style (opt-in only)
Creator-explainer style (opt-in)
Use this style ONLY on the video where the user asks for it ("is style mein edit karo", "behind-me captions wala style", "reference shorts jaisa"). For every other edit, use short-form-video-editing. Everything not covered here — delivering the complete video, face-hiding flower, transcription, music synthesis, export size, shell pitfalls — follows short-form-video-editing.
Learned on 2026-10-15 from 4 creator shorts the user supplied (creator-income and AI-editing explainers). Reproduce the same placements, B-roll types, half-screens and sound effects, but with original visuals for each video — never copy the reference frames. Fonts are provisional until the user names their own lettering.

1. Talking head + text placements
Speaker centred in a dark, moody room with coloured practical lights; the edit cuts away often and returns for punchlines and numbers.
A. Subtitle pills (every spoken phrase, whole video): white rounded rectangle (#F4F4F6, radius ~12px, padding ~12 × 24px), dark text #111, semibold geometric sans (Poppins / Plus Jakarta Sans 600) ~38–40px, 2–5 words per pill, centred at y ≈ 1530 on every shot. Only a 0.1 s fade/scale 0.96→1.
B. Key captions BEHIND the person (the user's favourite; clean and professional, never cheap):
Serif + bold: small serif line (DM Serif Display / Lora, white, 64–84px) over one big bold word (Inter 800, 150–250px, white → lavender #C8C8F8 gradient, letter-spacing −0.03em). Across the chest (y ≈ 1100–1250) with hands/mic in front, or huge behind the head/shoulders (y ≈ 150–450) for section words ("1st", "2nd").
Word-highlight: bold rounded sans, white, the current word mint #08D080, word by word at chest level (y ≈ 1050–1150).
Words blur-in (8px → 0) and rise 20px over ~0.3 s, staggered; fast fade out.
C. Glowing stat text (every number spoken): "That's about" (Inter 600 ~70px) above a big number (Inter 800, 130–170px), white with soft white + light-blue glow, on the chest at y ≈ 1150–1280, usually behind the hands; the number counts up for 0.6–1.0 s to the real spoken value.
D. Mint keyword pill: #48E880, white bold 1–3 words, on a split seam or the chest; pops in 0.15 s (scale 0.8 → 1).
E. Floating cards: screenshots/product photos with a 2px brand border (mint #48E880), radius ~16px, over the lower body (y ≈ 1170–1640) or BEHIND the head at the top (y ≈ 100–600, person in front). Side-by-side pairs with labels for comparisons.
F. Emphasis moves: viewfinder corner brackets around the face; a quick exposure flash (+30% for 0.2 s) on a punch word; 4–6% punch-ins on hook words.
2. B-roll and full-screen graphics (≈ 55–65% of runtime, a new visual every ~2–3 s)
3D-tilted screen/footage with depth of field (rotateX 25–30°, rotateZ −8°, rotateY −14°, heavy blur off-focus, slow drift) with a small white line + big glowing bold title or number on top; dark, blue-tinted.
Big number scene: dark navy backdrop, small caps label over a huge counting number (first digits brand blue, rest grey-white).
3D object + light beam: glossy blue 3D icon/product lit by a diagonal beam, title partly behind the object.
Light minimal break: #F1F1EF background, big solid blue dots (#1458C8) on flowing rounded black outline paths, items along the path, camera panning down; or a big faint word behind a single blue button.
B&W cut-out + bold text behind: desaturated cut-out on a white card with black letterbox bars, bold blue condensed caps behind it.
3D fly-through over colourful timeline blocks, a big word partly behind a block.
Full-screen UI on a dark gradient: recording in a rounded card with a thin mint border on black with a dark-green (or brand) radial glow; handwritten labels (Caveat, mint/pink) with curved arrows.
Speaker PiP bubble: ~360px circle top-right with a 6px magenta ring (#E04BC4) during long graphics.
Social/UI mock: the clip inside a white social-post frame with a cursor tapping.
Recap diagram: thin white circle around a central total card, small white label pills on the circle.
CTA: white pill button ("Follow" / "Order now") at chest level, cursor taps (press 0.95), label flips to confirmed.
Transitions: mostly hard cuts on the beat; pixel-mosaic dissolve on the hook; circle wipe; 3D camera move; blur-push.
3. Half-screen layouts
Split hook: top ~60% a designed title card (navy #081860 → #040A2A gradient, large glowing arc lines, two glass icon chips, two-tone title white + sky blue #58B8E8, dark pill, small stat card with a blue icon dot); speaker below in a card with rounded TOP corners (~70px) and a glowing sky-blue top edge.
50/50 hard split: two full-width halves (0–956 / 964–1920), a 6–8px white seam, a mint pill centred on the seam; alternate which half holds the speaker.
Both halves UI: two screens, the speaker as a small PiP inside one.
4. Sound (measured from the references)
Original beat-driven music bed throughout (≈110–120 BPM kick-led for tech/explainer; culturally fitting groove for product/fashion), about 16–18 dB under the voice, ducked under speech, lifting in gaps.
Sub-boom / low impact on every big reveal, number reveal and new B-roll type (~6–10 per minute).
Whoosh / swish on camera moves, 3D pushes, text slides, card entrances.
UI click + bright ding on cursor taps and buttons.
Digital crackle under the pixel-mosaic transition; optional soft ticks under count-ups.
Stereo, panned with motion; master ≈ −14 LUFS, peak ≤ −1 dBFS; voice always on top.
5. Captions behind the person (procedure)
pip install --break-system-packages "rembg[cpu]", session new_session('u2net_human_seg') (model from GitHub releases); ~1 s per 1080x1920 frame on CPU, so run it only for frames that carry behind-captions or behind-cards.
only_mask=True, feather 1–2px, build RGBA person frames for those ranges.
Layer order: graded video → caption/card → person cut-out → face flower (if hiding a face) → subtitle pills.
If the person fills the frame width, put the text behind the head/shoulders at the top rather than the chest, so part of it stays readable.
6. Analyzing new references for this style
1-fps contact sheets with timestamps, full-res key frames at layout changes, colour sampling of saturated pixels, cut list from HSV histograms, spectrograms with cut markers, and band-energy peaks (30–110 Hz booms, 5–12 kHz whooshes) to map the SFX.
