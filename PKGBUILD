# Maintainer: Kenta Arai @isKenta14
pkgname=rm1masm
pkgver=1.0.0
pkgrel=1
makedepends=()
arch=('x86_64')
pkgdesc="MICRO-1 micro assembler written in Rust"
license=('MIT')

build() {
    cd $startdir
    cargo build --release
    make target/man/rm1masm.1
}

package() {
    install -Dm755 $startdir/target/release/rm1masm $pkgdir/usr/bin/rm1masm
    install -Dm644 $startdir/target/man/rm1masm.1 $pkgdir/usr/share/man/man1/rm1masm.1
    install -Dm644 $startdir/completions/rm1masm $pkgdir/usr/share/bash-completion/completions/rm1masm
    install -Dm644 $startdir/completions/_rm1masm $pkgdir/usr/share/zsh/site-functions/_rm1masm
    install -Dm644 $startdir/LICENSE $pkgdir/usr/share/licenses/$pkgname/LICENSE
}
