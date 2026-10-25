# dotfiles

Personal setup for new machines: program installers for macOS and Windows, small helper scripts, and a wiki of installation notes.

```
dotfiles/
├── install/
│   ├── mac/homebrew.sh        # macOS programs via Homebrew
│   └── windows/winget.bat     # Windows programs via winget
├── scripts/
│   ├── openVLCyoutube.sh      # Play a YouTube video in VLC
│   └── openVLCTwitchStream.sh # Play a Twitch stream in VLC
└── notes/
    ├── installations.html     # TiddlyWiki with installation notes
    └── img/                   # Images used by the wiki
```

## Getting started

Clone the repo:

```bash
git clone https://github.com/xaviermaltas/dotfiles.git
cd dotfiles
```

## macOS installer

[`install/mac/homebrew.sh`](install/mac/homebrew.sh) installs Homebrew and then the programs below.

| Type | Programs |
|---|---|
| CLI tools | wget, git, curl, tree, Helm, streamlink, yt-dlp |
| Apps (casks) | Firefox, Visual Studio Code, GitKraken, Postman, IntelliJ IDEA CE, Microsoft Edge, Lens, VLC, Warp, Rectangle, Bartender |

It also adds this repo's `scripts/` folder to your `PATH` in `~/.zprofile`.

Run it:

```bash
bash install/mac/homebrew.sh
```

Then open a new terminal, or run `source ~/.zprofile`, so the new `PATH` takes effect.

Notes:
- Run it from the repo's final location. If you move the repo afterwards, update the `scripts/` path in `~/.zprofile`.
- Running it twice adds the `PATH` and Homebrew lines to `~/.zprofile` twice.

To add a program, append a line to the script in the right section:

```bash
#Install <name> --> https://formulae.brew.sh/...
brew install <formula>            # CLI tool
brew install --cask <cask>        # App
```

## Windows installer

[`install/windows/winget.bat`](install/windows/winget.bat) installs these programs with `winget`:

Firefox, VS Code, Windows Terminal, Opera, Spotify, Discord, GitKraken, Notepad++, GeForce Experience, Docker Desktop, IntelliJ IDEA Community, EarTrumpet, PowerToys, WinMerge, VLC, Streamlink, yt-dlp.

Run it from a Command Prompt or by double-clicking the file:

```bat
install\windows\winget.bat
```

`winget` comes with Windows 10/11 through the App Installer. If the command is missing, install App Installer from the Microsoft Store.

To add a program, find its id with `winget search <name>` and append:

```bat
REM <Name>
winget install -e --id <Publisher.Package>
if %ERRORLEVEL% EQU 0 Echo <Name> installed successfully.   %ERRORLEVEL%
```

## VLC scripts

Two Bash scripts in [`scripts/`](scripts/) open online video in VLC instead of the browser. Both installers add the programs they need: VLC, plus yt-dlp or streamlink.

On macOS, after running the installer, `scripts/` is on your `PATH`, so you can call them from any folder.

### openVLCyoutube.sh

Plays a YouTube video in VLC at up to 1080p.

```bash
openVLCyoutube.sh <youtubeLink>
openVLCyoutube.sh https://www.youtube.com/watch?v=vv625Qwv0_s
```

YouTube serves 1080p video and audio as separate streams. The script gets both from `yt-dlp` and lets VLC combine them. If only a single stream is available, it plays that.

### openVLCTwitchStream.sh

Plays a live Twitch stream in VLC at the best available quality.

```bash
openVLCTwitchStream.sh <streamerUser>
openVLCTwitchStream.sh skain
```

### Troubleshooting

- **`command not found`:** `scripts/` is not on your `PATH`. Run `source ~/.zprofile`, or call the script with its full path.
- **`permission denied`:** run `chmod +x scripts/*.sh`.
- **YouTube video won't load:** YouTube changes often, so update yt-dlp with `brew upgrade yt-dlp`.
- **Windows:** these are Bash scripts. Run them from Git Bash or WSL, not from Command Prompt.

## Notes wiki

[`notes/installations.html`](notes/installations.html) is a [TiddlyWiki](https://tiddlywiki.com): one self-contained HTML file with installation guides and cheat sheets. Topics include Homebrew, Java on M1 Macs, Node.js, Python and Anaconda, Kubernetes, Helm, Confluent and Kafka, Git and Linux commands, and IntelliJ and Mac shortcuts.

To read it, open the file in a browser:

```bash
open notes/installations.html
```

To edit it:
1. Open the file in a browser and make your changes.
2. Click the save button (✓). The browser downloads an updated copy of the file.
3. Replace `notes/installations.html` with the downloaded copy and commit it.

Keep `notes/img/` next to the HTML file. The wiki loads its images from that folder with relative paths.
