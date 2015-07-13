# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{3_2,3_3,3_4} )
PYTHON_DEPEND="3"

inherit git-r3 distutils

DESCRIPTION="PyGTK application to translate text from the clipboard to Russian with yandex.translate"
HOMEPAGE="https://github.com/aweal/translate"
EGIT_REPO_URI="https://github.com/aweal/translate.git"



LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

DEPEND="dev-python/requests
        dev-python/pygobject"

RDEPEND="${DEPEND}"

python_test() {
    esetup.py test
}


src_compile() {
    distutils_src_compile
}

src_install() {
    distutils_src_install
}
