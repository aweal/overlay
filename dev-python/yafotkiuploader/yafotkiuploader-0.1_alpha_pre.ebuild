# Copyright 1999-2015 Gentoo Foundation                                                                                                                             
# Distributed under the terms of the GNU General Public License v2                                                                                                  
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{3_2,3_3,3_4} )
PYTHON_DEPEND="3"

inherit git-r3 distutils

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

python_test() {
	esetup.py test
}



src_compile() {

	distutils_src_compile
}

src_install() {

	      distutils_src_install
}
   
