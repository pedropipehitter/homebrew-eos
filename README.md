# homebrew-eos

Homebrew tap for [eos-cli](https://github.com/pedropipehitter/eos-cli), a command-line tool for managing ETC Eos Family Software release downloads.

## Install

```bash
brew tap pedropipehitter/eos
brew install eos
```

## Usage

See [eos-cli](https://github.com/pedropipehitter/eos-cli) for the full command reference.

```bash
eos list                          # list available releases
eos get 3.3.6                     # download Mac .pkg for v3.3.6
eos get --pc 3.3.6                # download Windows .exe for v3.3.6
eos latest                        # download the newest release
eos latest 2                      # newest in the v2.x line
eos installed                     # list locally downloaded versions
eos clean                         # keep newest local version, delete the rest
```

## Note on access

The actual `.pkg` and `.exe` files live in a private GitHub repo (`pedropipehitter/eos-software`). The CLI requires `gh` (GitHub CLI) and access to that repo. If you don't have access, the download commands will fail; the source is open as a reference for similar private-release-management patterns.

## Formula

`Formula/eos.rb` — depends on `gh`. Installs the shell script from `bin/eos` in the eos-cli release archive.
