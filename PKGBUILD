pkgname=adaptabreath-kde-git
_gitname=adaptabreath-kde
pkgver=0.1
pkgrel=1
pkgdesc="Complete Adapta theme pack for KDE Plasma and Kvantum (git version)"
arch=('any')
url="https://gitlab.com/cscs/adaptabreath-kde"
license=('GPL3')
#depends=('kwin' 'plasma-desktop' 'kvantum-qt5' 'papirus-icon-theme')
optdepends=('kvantum-qt5: For the Konsole color scheme'
            'adapta-maia-theme: Matching GTK theme')
makedepends=('git' 'make')
#conflicts=('adapta-kde' 'kvantum-theme-adapta' 'adapta-aurorae-theme-git')
source=("git+${url}.git")
sha256sums=('SKIP')

pkgver() {
  cd ${srcdir}/${_gitname}

  printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
  
}

 package() {
  make -C ${srcdir}/${_gitname} DESTDIR=${pkgdir}/ install
}