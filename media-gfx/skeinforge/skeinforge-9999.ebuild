# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python2_7 )
inherit  python-r1

DESCRIPTION="Skeinforge is a GPL tool chain to forge a gcode skein for a model"
HOMEPAGE="http://fabmetheus.crsndoo.com/overview.php"
# The latest version is at:
#SRC_URI="http://members.axion.net/~enrique/reprap_python_beanshell.zip -> ${P}.zip"
SRC_URI="http://members.axion.net/~enrique/reprap_python_beanshell.zip"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="app-arch/unzip"
RDEPEND="${DEPEND}"



S="${WORKDIR}"

src_compile() {
    python_foreach_impl run_in_build_dir default
}
src_install() {
 	#  python_foreach_impl run_in_build_dir default
	python_copy_sources "/opt/tmp/"
}
