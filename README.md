![dotfiles](https://socialify.git.ci/anthonyroussel/dotfiles/image?description=1&forks=1&issues=1&language=1&name=1&owner=1&pulls=1&stargazers=1&theme=Dark)

# Install

See https://www.chezmoi.io/docs/install/ for installation instructions.

Then install the dotfiles with:

```bash
$ chezmoi init git@github.com:anthonyroussel/chezmoi.git
```

# Configure

The `~/.config/chezmoi/chezmoi.toml` file contains machine-specific confguration.

Fill this file with the following informations:

```toml
[data.git]
  name = "Anthony Roussel"
  email = "anthony.roussel17@gmail.com"
  signingkey = "C3BD099FC6799EF8BAB606EF69661D2F99BE26B6"
```

# Deploy dotfiles

```bash
$ chezmoi apply
```
