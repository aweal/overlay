# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="7"
PYTHON_COMPAT=( python{3_12} )
#PYTHON_DEPEND="3"

inherit git-r3 distutils-r1

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


python_compile() {
    distutils-r1_python_compile
}


