EAPI=8

DESCRIPTION="A minimal Git-like version control system written in C."
HOMEPAGE="https://github.com/Phlegmelm/MyGit"

SRC_URI="https://github.com/SrTortugardo/MyGit-Gentoo-Ebuild/archive/refs/tags/release.zip -> MyGit-1.2.0.zip"
S="${WORKDIR}/MyGit-Gentoo-Ebuild-release"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm64"

src_compile() {
	emake CFLAGS="-Iinclude"
}

src_install() {
	dobin mygit
}

pkg_postinst() {
	einfo "The Software Was Made By Lucy(Phlegmelm) : https://github.com/Phlegmelm"
    einfo "If you have errors with this ebuild, please don't request support with the Software Authors, because The Author/Authors did not participe on this ebuild"
	einfo "If you experience an error please contact to https://github.com/SrTortugardo instead "
}
