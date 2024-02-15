# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$


EAPI="7"
KDE_HANDBOOK="forceoptional"
KDE_TEST="optional"
VIRTUALX_REQUIRED="test"
inherit git-r3

DESCRIPTION="Electronic Design Automation"
HOMEPAGE="http://fritzing.org/"
EGIT_REPO_URI="https://github.com/fritzing/fritzing-app.git"


LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

RDEPEND="dev-qt/qtconcurrent
	dev-qt/qtcore
	dev-qt/qtgui
	dev-qt/qtnetwork
	dev-qt/qtprintsupport
	dev-qt/qtserialport
	dev-qt/qtsql[sqlite]
	dev-qt/qtsvg
	dev-qt/qtwidgets
	dev-qt/qtxml
	dev-libs/quazip"
DEPEND="${RDEPEND}"

src_configure() {
        kde6_src_configure
}

pkg_postinst() {
        kde6_pkg_postinst
}


