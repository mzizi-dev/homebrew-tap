# Mzizi Homebrew tap

Homebrew formulae for the Mzizi toolchain.

```sh
brew install mzizi-dev/tap/mz
mz --version
```

`mz` is the Mzizi CLI: add registry components, check the Bundu floor, and plan with fundi. It is a single
Rust binary built in [mzizi-dev/mzizi-cli](https://github.com/mzizi-dev/mzizi-cli). The formula downloads the
release binary for your platform and checks its sha256.

Other ways to install: `npm install -g @nyuchi/mzizi-cli` or `cargo install mzizi-cli`.

## Updating the formula

Each release of mzizi-cli publishes a `SHA256SUMS` file. Update `version` and the four macOS and Linux
`sha256` values in `Formula/mz.rb`, then run `brew audit --strict mzizi-dev/tap/mz` and
`brew test mzizi-dev/tap/mz`.

## License

Apache-2.0, as the formula installs software under that licence.
