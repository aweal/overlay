# Copyright 1999-2015 Gentoo Foundation                                                                                                                             
# Distributed under the terms of the GNU General Public License v2                                                                                                  
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{3_2,3_3,3_4,3_5} )

inherit git-r3 distutils-r1

DESCRIPTION="Command line script, to upload photos to the http://fotki.yandex.ru service. http://svetlyak.ru/blog/about-design-and-move-to-git/"
HOMEPAGE="https://github.com/svetlyak40wt/yafotkiuploader"
EGIT_REPO_URI="https://github.com/aweal/yafotkiuploader.git"



LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

DEPEND="dev-python/anyjson
 	dev-python/requests
	dev-python/pyexiv2"
  
  
RDEPEND="${DEPEND}"

python_compile() {
	distutils-r1_python_compile
}
