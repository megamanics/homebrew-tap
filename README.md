# homebrew-tap

> "you made a whole tap for one app?"
> "i made a whole app to say my own name. the tap is the sensible part."

one tap. you `brew install` whatever's in here and forget it ever had a source.

## heyski

native macOS notifications you fire from the terminal. it says **hey \<you\>**,
names whatever bugged you, and when you click the banner it drops you back into
the thing that sent it. now with buttons and a reply box — because sometimes a
notification should ask a question, not just gloat that the build finished.

```bash
brew install --cask megamanics/tap/heyski
heyski "it works"
```

ask it something while you're here:

```bash
case "$(heyski -m "deploy to prod?" --actions "yes,no" --timeout 30)" in
  yes) ./deploy.sh ;;
  *)   echo "fine, later" ;;
esac
```

**first launch:** the app is ad-hoc signed, not notarized — free, reproducible,
and mildly distrusted by Gatekeeper. if macOS clutches its pearls, right-click
HeySKi.app → Open once and it never asks again.

the full menu, the two bugs that earned their commits, and why swift not rust:
**[megamanics/heyski →](https://github.com/megamanics/heyski)**

## housekeeping

```bash
brew upgrade --cask heyski     # when a new one ships
brew uninstall --cask heyski   # we part as friends
```
