# shelepuginivan's dotfiles

Welcome to my dotfiles repository!

<div align="center">
  <img src="https://github.com/user-attachments/assets/f52587b9-2afc-49a7-9069-1516fe2d6a7c" alt="Screenshot 1">
  <i>I can't escape Touhou</i>
</div>

---

Here you'll find a comprehensive collection of my configuration files. To get
the most out of this repository, I recommend that you selectively copy parts of
configurations and scripts that suit your needs, rather than cloning the entire
setup.

> [!IMPORTANT]
> I use my own scripts and programs for some tasks, e.g. for switching themes.
> Simply ignore these parts or replace them with your preferred tooling.

## Navigation

For your convenience &mdash; a table of directories.

| Directory                                                                                                 | What is stored                                     |
| --------------------------------------------------------------------------------------------------------- | -------------------------------------------------- |
| [`.config`](https://github.com/shelepuginivan/dotfiles/tree/main/.config)                                 | Configuration filed                                |
| [`.local/bin`](https://github.com/shelepuginivan/dotfiles/tree/main/.local/bin)                           | Shell scripts and utilities                        |
| [`.local/share/wallpapers`](https://github.com/shelepuginivan/dotfiles/tree/main/.local/share/wallpapers) | Wallpapers                                         |

> [!NOTE]
> This repository contains submodules for large configurations such as
> my [Neovim configuration](https://github.com/shelepuginivan/init.lua).

## Uses

| Type                 | Name                                                                                                      |
|----------------------|-----------------------------------------------------------------------------------------------------------|
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
| Music player         | [Amberol](https://gitlab.gnome.org/World/amberol)                                                         |
| Lockscreen           | [gtklock](https://github.com/jovanlanik/gtklock)                                                          |
| Fonts                | [JetBrains Mono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/latest)                       |

## Links

Inspirations, resources &mdash; what I've used and am using to improve my workflow.

- [r/unixporn](https://www.reddit.com/r/unixporn) &mdash; Self-explanatory, UNIX rices (safe for work)
- [SVG Repo](https://www.svgrepo.com) &mdash; Icons for `dunst`
- [ericmurphyxyz/dotfiles](https://github.com/ericmurphyxyz/dotfiles) &mdash; Battery notifications
- [wallhaven.cc](https://wallhaven.cc/) &mdash; Wallpapers
- [Wallpaper Flare](https://www.wallpaperflare.com/) &mdash; Wallpapers
- [Niri setup showcase](https://github.com/YaLTeR/niri/discussions/325) &mdash; Niri configuration examples

## Old configurations

Since I'm now using Wayland instead of Xorg,
I removed the old dotfiles from the `main` branch. You can still find them
on the [`xorg` tag](https://github.com/shelepuginivan/dotfiles/tree/xorg),
although they are not maintained.
