pkgname=sway-launcher
pkgver=0.0.1
pkgrel=1
pkgdesc='A launcher for the sway desktop.'
arch=('x86_64')
license=('MIT')
depends=(sway)
makedepends=(rust)
sha256sums=(SKIP SKIP)

source=(
    dotdesktop::https://github.com/kennylevinsen/dot-desktop/archive/master.tar.gz
    wldash::https://github.com/kennylevinsen/wldash/archive/master.tar.gz)

prepare() {
    cp $srcdir/../sway-launcher $srcdir
}

build() {
  cd $srcdir/dot-desktop-master
  cargo build --release

  cd $srcdir/wldash-master
  cargo build --release
}

package() {
  install -D "$srcdir/dot-desktop-master/target/release/dot-desktop" "$pkgdir/usr/local/bin/dot-desktop"
  install -D "$srcdir/dot-desktop-master/README.md" "$pkgdir/usr/share/doc/dot-desktop/README"

  install -D "$srcdir/wldash-master/target/release/wldash" "$pkgdir/usr/local/bin/wldash"
  install -D "$srcdir/wldash-master/LICENSE" "$pkgdir/usr/share/licenses/wldash/LICENSE"
  install -D "$srcdir/wldash-master/README.md" "$pkgdir/usr/share/doc/wldash/README"

  install -D "$srcdir/sway-launcher" "$pkgdir/usr/local/bin/sway-launcher"
}
