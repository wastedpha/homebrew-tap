# Homebrew tap for Tend

[Tend](https://tendmac.app/) shows which apps drain your Mac's battery, in estimated watts, how your battery's health is holding up and what's running hot. It needs a Mac with Apple silicon and macOS 15 Sequoia or later.

## Install

```bash
brew install --cask wastedpha/tap/tend
```

The cask installs the same notarized DMG as the Download button on tendmac.app. Tend updates itself (it checks the signed feed at `https://tendmac.app/appcast.xml`), so `brew upgrade` leaves it alone unless you add `--greedy`.

## Uninstall

```bash
brew uninstall --cask tend          # removes Tend.app
brew uninstall --cask --zap tend    # also removes Tend's settings and history
```

`--zap` deletes these, and nothing shared with other apps:

| Path | What it is |
|---|---|
| `~/Library/Application Support/Tend` | Battery log and history, energy history, the signature cache and crash report |
| `~/Library/Caches/app.tendmac.tend` | Network cache and Sparkle's update downloads |
| `~/Library/HTTPStorages/app.tendmac.tend` and `….binarycookies` | Network storage |
| `~/Library/Preferences/app.tendmac.tend.plist` | Settings |
| `~/Library/Saved Application State/app.tendmac.tend.savedState` | Window positions |

Tend writes no log files of its own. A Tend Pro license or sign-in is kept in your login keychain under `app.tend.license`; remove it in Keychain Access if you want it gone too.

## Help

- Install help: https://tendmac.app/help/install
- Uninstall help: https://tendmac.app/help/uninstall
- Email: support@tendmac.app

Problems with the cask itself (a wrong checksum, a version that won't install) can go in this repository's issues.

This tap is maintained by Tend's developer. The cask is generated in Tend's own repository by `scripts/update-cask.sh` on each release, so please don't edit `Casks/tend.rb` by hand.
