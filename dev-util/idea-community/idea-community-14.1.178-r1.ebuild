# Copyright open-overlay 2015 by Alex

EAPI=5
inherit eutils versionator

SLOT="0"
RDEPEND=">=virtual/jdk-1.7"

MY_PN="idea"

RESTRICT="strip"
QA_TEXTRELS="opt/${P}/bin/libbreakgen.so"

DESCRIPTION="IntelliJ IDEA is an intelligent Java IDE (Community Edition)"
HOMEPAGE="http://jetbrains.com/idea/"
#https://download.jetbrains.com/idea/ideaIC-14.1.1.tar.gz
#https://download.jetbrains.com/idea/ideaIC-14.1.1.tar.gz
http://download.jetbrains.com/idea/ideaIC-14.1.1.tar.gz

SRC_URI="http://download.jetbrains.com/${MY_PN}/${MY_PN}IC-14.1.1.tar.gz"
LICENSE="Apache-2.0"
IUSE=""
KEYWORDS="~amd64 ~x86"
S="${WORKDIR}/${MY_PN}-IC-141.178.9"

src_install() {
	local dir="/opt/${PN}"

	insinto "${dir}"
	doins -r *
	fperms 755 "${dir}/bin/${MY_PN}.sh" "${dir}/bin/fsnotifier" "${dir}/bin/fsnotifier64"

	newicon "bin/idea.png" "${PN}.png"
	make_wrapper ${PN} ${dir}/bin/${MY_PN}.sh
	make_desktop_entry ${PN} "IntelliJ IDEA(Community Edition)" ${PN} "Development;IDE"
}
