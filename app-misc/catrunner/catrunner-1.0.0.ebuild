EAPI=8

DESCRIPTION="CatRunner Port To GNU/Linux - X11 Animated cat by GPU Usage"
HOMEPAGE="https://github.com/SrTortugardo/CatRunner-Linux"

SRC_URI="https://github.com/SrTortugardo/CatRunner-Linux/archive/refs/tags/Release.zip -> catrunner.zip"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
    x11-libs/libX11
"

RDEPEND="${DEPEND}"

S="${WORKDIR}/CatRunner-Linux-Release/src"

src_compile() {
	emake
}

src_install() {
	emake DESTDIR="${D}" install

	insinto /usr/share/applications
	doins catrunner.desktop
}
