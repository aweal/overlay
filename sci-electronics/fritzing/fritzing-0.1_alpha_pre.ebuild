# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$


EAPI="6"
KDE_HANDBOOK="forceoptional"
KDE_TEST="optional"
VIRTUALX_REQUIRED="test"
inherit git-r3 cmake-utils

DESCRIPTION="Electronic Design Automation"
HOMEPAGE="http://fritzing.org/"
EGIT_REPO_URI="https://github.com/fritzing/fritzing-app.git"


LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

RDEPEND="dev-qt/qtconcurrent:5
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtnetwork:5
	dev-qt/qtprintsupport:5
	dev-qt/qtserialport:5
	dev-qt/qtsql:5[sqlite]
	dev-qt/qtsvg:5
	dev-qt/qtwidgets:5
	dev-qt/qtxml:5
	>=dev-libs/quazip-0.7.2[qt5]"
DEPEND="${RDEPEND}
	>=dev-libs/boost-1.40"

src_configure() {
        kde5_src_configure
}

pkg_postinst() {
        kde5_pkg_postinst
}


