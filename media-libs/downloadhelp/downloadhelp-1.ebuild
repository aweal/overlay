# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

BN="net.downloadhelper.coapp"
MY_PN="${PN/-bin/}"

DESCRIPTION="Companion application for Video DownloadHelper browser add-on"
HOMEPAGE="https://www.downloadhelper.net/"
SRC_URI="https://github.com/mi-g/vdhcoapp/releases/download/v1.2.4/net.downloadhelper.coapp-1.2.4-1_amd64.tar.gz"
#"
#        x86? ( https://github.com/mi-g/${MY_PN}/releases/download/v${PV}/${BN}-${PV}-1_i386.tar.gz )
#        amd64? ( https://github.com/mi-g/${MY_PN}/releases/download/v${PV}/${BN}-${PV}-1_amd64.tar.gz )"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
        dev-lang/orc
"
DEPEND="${RDEPEND}"

S="${WORKDIR}/${BN}-${PV}"

src_install() {
        local size
        if use x86; then
                size=32
        elif use amd64; then
                size=64
    else
        die "Ebuild only functions for x86 and amd64."
    fi

        dobin bin/${BN}-linux-${size}


        insinto /usr/share/"${MY_PN}"
        doins config.json

        insinto /usr/lib/mozilla/native-messaging-hosts/
        newins "${FILESDIR}/firefox-manifest.json" "${BN}.json"
        sed -i "s/%SIZE%/${size}/" "${ED%/}/usr/lib/mozilla/native-messaging-hosts/${BN}.json" || die "sed"

        insinto /etc/opt/chrome/native-messaging-hosts
        newins "${FILESDIR}/chrome-manifest.json" "${BN}.json"
        sed -i "s/%SIZE%/${size}/" "${ED%/}/etc/opt/chrome/native-messaging-hosts/${BN}.json" || die "sed"

        insinto /etc/chromium/native-messaging-hosts
        newins "${FILESDIR}/chrome-manifest.json" "${BN}.json"
        sed -i "s/%SIZE%/${size}/" "${ED%/}/etc/chromium/native-messaging-hosts/${BN}.json" || die "sed"
}
