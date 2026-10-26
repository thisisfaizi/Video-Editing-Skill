# Video Editing Skill for Claude

A complete video-editing **house style** packaged as two [Claude Agent Skills](https://docs.claude.com/en/docs/agents-and-tools/agent-skills/overview). With them, Claude edits talking-head reels, shorts, product reels and narration/biography videos in **Remotion**. The result should look like a Netflix / Apple TV documentary title sequence, not a meme edit.

Ask Claude to *"edit karo"*. It analyzes the footage, picks a colour theme from the speaker's outfit, then builds captions, Apple liquid-glass UI, half-screens, B-roll, original music and layered sound design. It renders and delivers the finished MP4 in the same turn.

| Skill | When it runs | What it does |
|---|---|---|
| [`short-form-video-editing`](skills/short-form-video-editing/SKILL.md) | **Default** for every edit | Captions below the face, Apple liquid-glass / Dynamic-Island UI motion, half-screens, cinematic B-roll, premium cinematic language for narration videos, an outfit-matched theme, original music, three-pass SFX |
| [`creator-explainer-style`](skills/creator-explainer-style/SKILL.md) | **Opt-in only** ("is style mein", "behind-me captions wala") | Captions behind the person, white subtitle pills, glowing stat count-ups, 3D-tilted B-roll, 50/50 splits, a beat-driven bed with sub-booms |

---

## Contents

- [What the house style enforces](#what-the-house-style-enforces)
- [Install](#install)
- [How to use it](#how-to-use-it)
- [Toolchain the skill expects](#toolchain-the-skill-expects)
- [Repository layout](#repository-layout)
- [Keeping the skill current](#keeping-the-skill-current)
- [Rule precedence and known tensions](#rule-precedence-and-known-tensions)

---

## What the house style enforces

**22 user corrections** sit at the top of the default skill. Each one is feedback from a real edit, and they override everything else. The main ones:

- **Deliver, don't pitch.** "Edit karo" means the finished MP4, not a plan.
- **The full package on every reel:** captions, a full-screen animation, 2–4 B-roll cutaways, half-screens, PNG/logo UI over the video, and music. A layer is dropped only when that reel's brief says so.
- **Never black out the frame.** The real video stays visible around every UI element.
- **Apple liquid glass:** clear refractive glass, squircles, one container that morphs between states, letter-by-letter blur text, springs and motion blur.
- **Premium colour:** one restrained palette per video, lifted warm blacks, one muted accent at ≤ 55% saturation, a cinematic grade and grain. No rainbow, neon or CSS-gradient "gold".
- **Editorial type:** a display serif for hero words and a light sans for labels. No Montserrat-900-all-caps "YouTube bold".
- **Cinematic, never cartoon:** slow dolly moves, long eases, light-driven reveals. No slams, shakes, flashes, spins, clip-art or toy 3D.
- **A theme from the outfit:** Claude samples the outfit and background colours (k-means in CIELAB) and builds one accessible theme with ≥ 4.5:1 caption contrast.
- **Real sound:** original music ~10 dB under the voice, a −14 LUFS master, and sparse, deep, layered SFX.
- **Face hiding with zero leaks:** a real, face-sized flower photo tracked in every frame.
- **A premium self-check:** a contact sheet of 8–12 stills, each judged against a documentary title sequence, before the full render.

It also follows a **Golden Rule**: references teach style and quality, never content. Every video gets original captions, animations and UI built around what *this* speaker is saying.

## Install

### Claude Code (macOS / Linux)

```bash
git clone https://github.com/thisisfaizi/Video-Editing-Skill.git
cd Video-Editing-Skill
./scripts/install.sh            # symlinks both skills into ~/.claude/skills/
```

The skills are symlinked, so a `git pull` updates them in place. To install into a single project instead:

```bash
./scripts/install.sh /path/to/project/.claude/skills
```

To install by hand, copy or symlink each folder under `skills/` into `~/.claude/skills/`.

### Claude.ai (web / desktop app)

1. Download `short-form-video-editing.zip` and `creator-explainer-style.zip` from the [latest release](https://github.com/thisisfaizi/Video-Editing-Skill/releases/latest), or build them yourself with `./scripts/package.sh` (they land in `dist/`).
2. In Claude, go to **Settings → Capabilities → Skills** and upload each zip.
3. Make sure code execution is enabled. The skill renders video, so it needs a sandbox with Node and ffmpeg.

## How to use it

Talk to Claude normally. The skill replies in Roman Urdu, addressing you as "ap".

| You say | What happens |
|---|---|
| `Is reel ko edit karo` + a video | Default style, the full package, the finished MP4 |
| `Product reel bana do, music nahi chahiye` | Default style without the music layer, for this reel only |
| `Is video mein meri face chhupa do` | Adds the tracked real-flower face cover |
| `Yeh script hai, Sadie Sink jaisi biography video banao` | Premium cinematic narration video (§2C), with a Kokoro voiceover if none is supplied |
| `Is style mein edit karo` / `behind-me captions wala` | Switches to `creator-explainer-style` for that video only |
| `Yeh 3 reference videos dekho aur seekho` | Frame-by-frame analysis, then a proposed skill update |

Every final message names the colour theme it picked, for example *"Theme: dusty rose + off-white, matched to your pink dupatta and the warm wall."* It also lists any unclear transcript words.

## Toolchain the skill expects

The skill installs what it needs as it goes, but an edit runs fastest when these are already present:

| Purpose | Tools |
|---|---|
| Composition and render | Node 18+, [Remotion](https://www.remotion.dev/) (`@remotion/three`, `@remotion/motion-blur`), ffmpeg |
| Transcription and voiceover | `@huggingface/transformers` + `sts-whisper-small` (ONNX), `kokoro-onnx` (voice `af_heart`) |
| Analysis and colour | Python 3 with `opencv-contrib-python-headless<5`, `scikit-learn`, `scikit-image`, `numpy`, `scipy` |
| Cut-outs | `rembg[cpu]` (`u2net`, `u2net_human_seg`) |
| Photoreal stills | three.js (GLTFLoader + RGBELoader) + Playwright Chromium |

## Repository layout

```
Video-Editing-Skill/
├── skills/
│   ├── short-form-video-editing/
│   │   ├── SKILL.md                    # corrections 1–22, Golden Rule, layers, order of work, checklist
│   │   └── references/
│   │       ├── captions-and-colour.md  # §1 captions, §1A theme sampling + gradient tokens
│   │       ├── animation.md            # §2A Apple UI motion, §2B full-screen scenes, §2C cinematic
│   │       ├── sound-design.md         # §3 three-pass sound design + levels
│   │       ├── procedures.md           # §6 flower, face tracking, B-roll, music + SFX recipes
│   │       └── trends-log.md           # §5 trends log (checked every edit)
│   └── creator-explainer-style/
│       └── SKILL.md                    # Part 2: the opt-in creator-explainer look
├── source/
│   └── video-editing-skill-2026-10-17.md   # the original house-style document, unchanged
├── scripts/
│   ├── install.sh                      # symlink the skills into ~/.claude/skills
│   └── package.sh                      # build claude.ai upload zips into dist/
└── CHANGELOG.md
```

`SKILL.md` stays short enough to load on every edit. The detailed specs live in `references/`, and Claude opens them only when a step needs them (progressive disclosure).

## Keeping the skill current

- **Corrections:** when you give feedback on an edit, Claude proposes a new numbered correction. Add it to the corrections list in `SKILL.md`; corrections always win.
- **Trends log:** at the start of every edit, Claude checks the date in [`trends-log.md`](skills/short-form-video-editing/references/trends-log.md). If it is more than ~4 weeks old, Claude researches current trends and proposes an update.
- **New references:** Claude analyzes them frame by frame (contact sheets, zoomed crops, spectrograms) before it writes any learnings.
- **Versions:** record each change in [`CHANGELOG.md`](CHANGELOG.md). For a big rewrite of the style, add a new dated file to `source/`.

## Rule precedence and known tensions

1. The user corrections in `SKILL.md`.
2. The Golden Rule and the mandatory layers.
3. The reference files.

A few reference lines came from the Apple-UI reference clips and conflict with the later premium corrections. They are kept as written and marked **⚠ precedence** in [`animation.md`](skills/short-form-video-editing/references/animation.md):

- The electric yellow `#FFF200` / wallet blue `#2FA8FF` widget accents vs. correction 16 (one muted accent at ≤ 55% saturation).
- Montserrat 700 caps UI titles vs. correction 17 (editorial serif + light sans).
- The red tint flash and the spotlight cone in the §2B scenes vs. corrections 16 and 18.

The creator-explainer style deliberately uses brighter colours (mint, lavender, navy, magenta) because the user's reference shorts do. It applies only on request.
