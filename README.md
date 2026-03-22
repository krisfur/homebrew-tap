# homebrew-tap

Homebrew tap for `fex`.

## Install

```bash
brew install krisfur/tap/fex
```

## Update formula

1. Tag and push a new release in `krisfur/fex`.
2. Run `./scripts/bump-fex 0.6.1` in this repository.
3. Review the diff, then commit and push this repository.

The script updates `Formula/fex.rb`, refreshes the release tarball checksum, and shows the resulting `git diff`.
