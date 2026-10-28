# Quill for Homebrew

The official Homebrew tap for [Quill](https://quilldictate.site), an open-source,
local-first dictation app for macOS and Windows.

## Install on macOS

With [Homebrew](https://brew.sh) installed:

```sh
brew install --cask aaravkashyap12/quill/quill
```

Supports Apple Silicon and Intel Macs running macOS 12 or later. The cask downloads
a pinned universal DMG from [Quill's GitHub releases](https://github.com/AaravKashyap12/quill/releases)
and verifies its SHA-256 before installation.

Quill is ad-hoc signed, not Apple-notarized. Homebrew preserves macOS quarantine
and does not approve permissions. If macOS blocks the first launch, use **System
Settings → Privacy & Security → Open Anyway** for Quill. In Quill, allow the
microphone to record and Accessibility to insert into your chosen editor. Cloud
keys are optional and remain in your OS credential store.

Quit an existing Quill copy before installing or upgrading. If you previously
installed it by dragging the app into Applications, remove only that app bundle
before installing through Homebrew; keep its application data and keys.

## Update or remove

Quill supports in-app updates. To explicitly update it through Homebrew:

```sh
brew update && brew upgrade --cask --greedy aaravkashyap12/quill/quill
```

```sh
brew uninstall --cask aaravkashyap12/quill/quill
```

Uninstalling through this cask does not delete settings, models or credentials.

## Maintainer release checklist

After publishing a Quill release, update `version` and `sha256` in `Casks/quill.rb`.
Use the digest of the actual `Quill-macos-universal.dmg` downloaded from that tag;
do not use `sha256 :no_check` or a mutable latest-release URL. Check the DMG digest
against the GitHub release asset metadata, the complete app signature and both
architectures before publishing the cask update. Keep the website command stable.

CI checks Homebrew's parsed cask metadata and installs into a disposable directory.
It does not launch Quill or establish microphone, dictation or editor compatibility.
