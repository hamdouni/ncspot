<div align="center" style="text-align:center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="images/logo_text_dark.svg">
    <source media="(prefers-color-scheme: light)" srcset="images/logo_text_light.svg">
    <img alt="ncspot logo" height="128" src="images/logo_text_light.svg">
  </picture>
  <h3>An ncurses Spotify client written in Rust using librespot</h3>

[![Crates.io](https://img.shields.io/crates/v/ncspot.svg)](https://crates.io/crates/ncspot)
[![Gitter](https://badges.gitter.im/ncspot/community.svg)](https://gitter.im/ncspot/community?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

  <img alt="ncspot search tab" src="images/screenshot.png">
</div>

## 🔀 Fork Differences

This repository contains modifications from the upstream [ncspot](https://github.com/hrkfdn/ncspot) project:

### Key Changes

- **Cutting-edge librespot**: Uses the latest `dev` branch from [librespot-org/librespot](https://github.com/librespot-org/librespot) instead of stable releases
- **Enhanced compatibility**: Code adjustments to work with the latest librespot API changes
- **Improved credential storage**: Uses the system's state directory instead of cache directory for storing Spotify credentials (more semantically correct)
- **Latest features**: Access to newest Spotify protocol support and bug fixes before official releases

### Why This Fork?

This fork maintains compatibility with the latest Spotify protocol changes by staying at the cutting edge of librespot development. While the upstream project uses stable librespot releases, this version provides:
- Faster access to critical Spotify API updates
- Latest bug fixes and performance improvements
- Enhanced protocol compatibility

> **Note**: This version may be less stable than the upstream project due to using development dependencies. Use the official ncspot if you prefer stability over latest features.

ncspot is an ncurses Spotify client written in Rust using librespot. It is heavily inspired by
ncurses MPD clients, such as [ncmpc](https://musicpd.org/clients/ncmpc/). My motivation was to
provide a simple and resource friendly alternative to the official client as well as to support
platforms that currently don't have a Spotify client, such as the \*BSDs.

ncspot only works with a Spotify premium account as it offers features that are not available for
free accounts.

## Features
- Support for tracks, albums, playlists, genres, searching...
- Small [resource footprint](doc/resource_footprint.md)
- Support for a lot of platforms
- Vim keybindings out of the box
- IPC socket for remote control

## Installation
ncspot is available on macOS (Homebrew), Windows (Scoop, WinGet), Linux (native package, Flathub and
Snapcraft) and the BSD's. Detailed installation instructions for each platform can be found
[here](/doc/users.md).

## Configuration
A configuration file can be provided. The default location is `~/.config/ncspot`. Detailed
configuration information can be found [here](/doc/users.md#configuration).

## Building
Building ncspot requires a working [Rust installation](https://www.rust-lang.org/tools/install) and
a Python 3 installation. To compile ncspot, run `cargo build`. For detailed instructions on building
ncspot, there is more information [here](/doc/developers.md).

## Packaging
Information about provided files, how to generate some of them and current package status accross
platforms can be found [here](/doc/package_maintainers.md).
