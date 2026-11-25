# maester-tv/homebrew-tap

Homebrew casks for [maester](https://github.com/codebend3r/maester)'s apps.

## Raven

Raven, the desktop video player, for Macs with Apple silicon:

```sh
brew tap maester-tv/tap
brew trust maester-tv/tap
brew install --cask raven
```

Homebrew refuses to load a cask from a tap you haven't trusted, so `brew trust` comes first.

Upgrade with `brew upgrade --cask raven`, remove with `brew uninstall --cask raven` (add `--zap` to delete its settings and downloads too).

Raven is signed with a Developer ID and notarized by Apple from the release after 0.9.3 on, so macOS opens it without asking. Version 0.9.3 and earlier are not: macOS blocks their first launch until you open System Settings, then Privacy & Security, and choose Open Anyway beside Raven. `brew upgrade --cask raven` moves you to a signed release.

`Casks/raven.rb` is updated by maester's desktop release workflow on every `vX.Y.Z` tag; don't edit its `version` or `sha256` by hand.
