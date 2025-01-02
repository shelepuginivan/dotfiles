<div align="center">
  <img src="https://cdn.shelepugin.ru/i/png/gh-banner-dotfiles.png" alt="shelepuginivan/dotfiles">
  <h3>Welcome to my dotfiles repository!</h3>

  ---

  <img src="https://cdn.shelepugin.ru/i/png/dotfiles-screenshot.png" alt="Screenshot">
  <h3><i>Now with niri modules for Waybar 🎉</i></h3>
</div>

---

Here you'll find a comprehensive collection of my configuration files. To get
the most out of this repository, I recommend that you selectively copy parts of
configurations and scripts that suit your needs, rather than cloning the entire
setup.

This branch is intended for **desktop** installations. This means that some
features, such as battery alerts, are removed. For laptops, please refer to the
[`main`](https://github.com/shelepuginivan/dotfiles/tree/main) branch.

> [!IMPORTANT]
> I use my own scripts and programs for some tasks, e.g. for switching themes.
> Simply ignore these parts or replace them with your preferred tooling.

## Navigation

For your convenience &mdash; a table of directories.

| Directory                                                                                                 | What is stored                                     |
| --------------------------------------------------------------------------------------------------------- | -------------------------------------------------- |
| [`.config`](https://github.com/shelepuginivan/dotfiles/tree/main/.config)                                 | Configuration files                                |
| [`.local/bin`](https://github.com/shelepuginivan/dotfiles/tree/main/.local/bin)                           | Shell scripts and utilities                        |

> [!TIP]
> Wallpapers can be found in a [separate repository](https://github.com/shelepuginivan/wallpapers).

> [!NOTE]
> This repository contains submodules for large configurations such as
> my [Neovim configuration](https://github.com/shelepuginivan/init.lua).

## Uses

| Type                 | Name                                                                                                      |
| -------------------- | --------------------------------------------------------------------------------------------------------- |
| Operating system     | [Arch Linux](https://archlinux.org)                                                                       |
| Wayland compositor   | [niri](https://github.com/YaLTeR/niri)                                                                    |
| Status bar           | [Waybar](https://github.com/Alexays/waybar)                                                               |
| Notification daemon  | [dunst](https://github.com/dunst-project/dunst)                                                           |
| Idle manager         | [swayidle](https://github.com/swaywm/swayidle)                                                            |
| Terminal             | [Alacritty](https://github.com/alacritty/alacritty)                                                       |
| Application launcher | [wofi](https://hg.sr.ht/~scoopta/wofi)                                                                    |
| Browser              | [Firefox](https://www.mozilla.org/en-US/firefox) with [Betterfox](https://github.com/yokoffing/BetterFox) |
| File manager         | [lf](https://github.com/gokcehan/lf)                                                                      |
| Image viewer         | [imv](https://sr.ht/~exec64/imv)                                                                          |
| Video player         | [mpv](https://github.com/mpv-player/mpv)                                                                  |
| Music player         | [musikcube](https://github.com/clangen/musikcube)                                                         |
| Power menu           | [powermenu](https://github.com/shelepuginivan/powermenu)
| Fonts                | [JetBrains Mono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/latest)                       |

## Links

Inspirations, resources &mdash; what I've used and am using to improve my workflow.

- [r/unixporn](https://www.reddit.com/r/unixporn) &mdash; Self-explanatory, UNIX rices (safe for work)
- [SVG Repo](https://www.svgrepo.com) &mdash; Icons for `dunst`
- [ericmurphyxyz/dotfiles](https://github.com/ericmurphyxyz/dotfiles) &mdash; Battery notifications
- [Niri setup showcase](https://github.com/YaLTeR/niri/discussions/325) &mdash; Niri configuration examples

## Old configurations

Since I'm now using Wayland instead of Xorg,
I removed the old dotfiles from the `main` branch. You can still find them
on the [`xorg` tag](https://github.com/shelepuginivan/dotfiles/tree/xorg),
although they are not maintained.
