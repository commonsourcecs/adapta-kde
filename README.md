<p align="center">
  <img src="https://gitlab.com/cscs/adaptabreath-kde/raw/master/preview.png" alt="Preview AdaptaBreath KDE"/>
</p>

AdaptaBreath KDE - This is a fork of the popular [Adapta KDE](https://github.com/PapirusDevelopmentTeam/adapta-kde) for Plasma 5 desktop.

In this repository you'll find:

- Aurorae Themes
- Kvantum Themes
- Plasma Color Schemes
- Plasma Desktop Themes
- Plasma Look-and-Feel Settings
- Wallpaper

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

- For better looking use toolbar icons without text with 16px size (for Papirus themes)

## Hacks for small screen resolution

- Install widgets [Active Window Control](https://github.com/kotelnik/plasma-applet-active-window-control) & [Application Menu](https://cgit.kde.org/plasma-workspace.git/tree/applets/appmenu) and move to panel
- Disable window buttons & titlebar on decoration:

open rc-file on aurorae theme and set:
```
ButtonHeight=0
ButtonWidth=0
TitleHeight=0
```
- Use [GTK3-noCSD](https://github.com/PCMan/gtk3-nocsd) script 
=======
- On some propietary video drivers Aurorae have wrong rendering by default with Adapta theme. See more info [here](https://github.com/PapirusDevelopmentTeam/adapta-kde/issues/21)

## Known issues

- Old version qBittorrent (~3.3.1) not used 22px icon size on toolbar (icons will be blurred, update to fresh version for solve this)

- On some propietary video drivers Aurorae have wrong rendering by default with Adapta theme. See more info [here](https://github.com/PapirusDevelopmentTeam/adapta-kde/issues/21)

## License

GNU GPL v3
