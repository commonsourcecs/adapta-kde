<p align="center">
  <img src="https://gitlab.com/cscs/adaptabreath-kde/raw/master/preview.png" alt="Preview AdaptaBreath KDE"/>
</p>

AdaptaBreath KDE - This is a fork of the popular [Adapta KDE](https://github.com/PapirusDevelopmentTeam/adapta-kde) for Plasma 5 desktop with a few additions and extras.

In this repository you'll find:

- Aurorae Themes
- Kvantum Themes
- Plasma Color Schemes
- Plasma Desktop Theme
- Plasma Look-and-Feel Settings
- Wallpapers

## Installation
You can move the folder to their proper directories manually, or use the Makefile

#### Install

```
make install
```

#### Uninstall

```
make uninstall
```

## Recommendations

- This theme provides compatability  with [Kvantum engine](https://github.com/tsujan/Kvantum/tree/master/Kvantum).

  Run `kvantummanager` to choose and apply theme.

- Install [Papirus-Adapta icon theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) for a more consistent and beautiful experience.

- On systemsettings set **Noto Sans** font for title, menu and toolbar

- For better looking use toolbar icons without text with 22px size (for Papirus themes)

## Known issues

- Old version qBittorrent (~3.3.1) not used 22px icon size on toolbar (icons will be blurred, update to fresh version for solve this)

- On some propietary video drivers Aurorae have wrong rendering by default with Adapta theme. See more info [here](https://github.com/PapirusDevelopmentTeam/adapta-kde/issues/21)

## License

GNU GPL v3
