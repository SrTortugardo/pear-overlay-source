EAPI=8

inherit cargo

DESCRIPTION="A local network chat."
HOMEPAGE="https://github.com/SrTortugardo/Pearchat67"

SRC_URI="https://github.com/SrTortugardo/Pearchat67/archive/refs/tags/release.zip -> Pearchat67-1.0.0.zip"
S="${WORKDIR}/Pearchat67-release"
LICENSE="Pear-License"
SLOT="0"
KEYWORDS="~amd64 ~arm64"

src_compile() {
	cargo_src_compile
}

src_install() {
	cargo_src_install
}

