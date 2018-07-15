# Dont use this file ... it points to original github. Kept only for backup or future use.

#!/bin/sh

set -e

gh_repo="adaptabreath-kde"
gh_desc="AdaptaBreath KDE"

cat <<- EOF



      aaa          dd                         tt
    aa   aa     ddddd     aaaaa   ppppp     ttttttt     aaaaa
    aaaaaaa   dd   dd   aa   aa   pp   pp     tt      aa   aa
    aa   aa   dd   dd   aa   aa   pp   pp     tt      aa   aa
    aa   aa     ddddd     aaaaa   ppppp         ttt     aaaaa
                                  pp
                                  pp
                                  
    BBBBB     RRRRRR    EEEEEEE     AAA     TTTTTTT   HH   HH 
    BB   B    RR   RR   EE         AAAAA      TTT     HH   HH 
    BBBBBB    RRRRRR    EEEEE     AA   AA     TTT     HHHHHHH 
    BB   BB   RR  RR    EE        AAAAAAA     TTT     HH   HH 
    BBBBBB    RR   RR   EEEEEEE   AA   AA     TTT     HH   HH 



  $gh_desc
  https://gitlab.com/cscs/$gh_repo


EOF

PREFIX=${PREFIX:=/usr}
uninstall=${uninstall:-false}

_msg() {
    echo "=>" "$@" >&2
}

_rm() {
    # removes parent directories if empty
    sudo rm -rf "$1"
    sudo rmdir -p "$(dirname "$1")" 2>/dev/null || true
}

_download() {
    _msg "Getting the latest version from GitHub ..."
    wget -O "$temp_file" \
        "https://gitlab.com/cscs/adaptabreath-kde/-/archive/master/adaptabreath-kde-master.tar.gz"
    _msg "Unpacking archive ..."
    tar -xzf "$temp_file" -C "$temp_dir"
}

_uninstall() {
    _msg "Deleting $gh_desc ..."
    _rm "$PREFIX/share/aurorae/themes/AdaptaBreath"
    _rm "$PREFIX/share/aurorae/themes/AdaptaBreathLuna"
    _rm "$PREFIX/share/color-schemes/AdaptaBreath.colors"
    _rm "$PREFIX/share/color-schemes/AdaptaBreathNokto.colors"
    _rm "$PREFIX/share/color-schemes/AdaptaBreathLuna.colors"
    _rm "$PREFIX/share/Kvantum/AdaptaBreath"
    _rm "$PREFIX/share/Kvantum/AdaptaBreathNokto"
    _rm "$PREFIX/share/Kvantum/AdaptaBreathLuna"
    _rm "$PREFIX/share/plasma/desktoptheme/AdaptaBreath"
    _rm "$PREFIX/share/plasma/desktoptheme/AdaptaBreathLuna"
    _rm "$PREFIX/share/plasma/look-and-feel/org.kde.adaptabreath.desktop"
    _rm "$PREFIX/share/wallpapers/AdaptaBreath"
}

_install() {
    _msg "Installing ..."
    sudo cp -R \
        "$temp_dir/$gh_repo-master/aurorae" \
        "$temp_dir/$gh_repo-master/color-schemes" \
        "$temp_dir/$gh_repo-master/Kvantum" \
        "$temp_dir/$gh_repo-master/plasma" \
        "$temp_dir/$gh_repo-master/wallpapers" \
        "$PREFIX/share"
}

_cleanup() {
    _msg "Clearing cache ..."
    rm -rf "$temp_file" "$temp_dir" \
        ~/.cache/plasma-svgelements-Adapta* \
        ~/.cache/plasma_theme_Adapta*.kcache
    _msg "Done!"
}

trap _cleanup EXIT HUP INT TERM

temp_file="$(mktemp -u)"
temp_dir="$(mktemp -d)"

if [ "$uninstall" = "false" ]; then
    _download
    _uninstall
    _install
else
    _uninstall
fi
