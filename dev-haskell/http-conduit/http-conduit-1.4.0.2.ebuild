# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="HTTP client package with conduit interface and HTTPS support."
HOMEPAGE="http://www.yesodweb.com/book/http-conduit"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=">=dev-haskell/asn1-data-0.5.1[profile?]
		<dev-haskell/asn1-data-0.7[profile?]
		>=dev-haskell/attoparsec-0.8.0.2[profile?]
		<dev-haskell/attoparsec-0.11[profile?]
		=dev-haskell/attoparsec-conduit-0.4*[profile?]
		=dev-haskell/base64-bytestring-0.1*[profile?]
		>=dev-haskell/blaze-builder-0.2.1[profile?]
		<dev-haskell/blaze-builder-0.4[profile?]
		=dev-haskell/blaze-builder-conduit-0.4*[profile?]
		>=dev-haskell/case-insensitive-0.2[profile?]
		=dev-haskell/certificate-1.1*[profile?]
		=dev-haskell/conduit-0.4*[profile?]
		=dev-haskell/cookie-0.4*[profile?]
		=dev-haskell/cprng-aes-0.2*[profile?]
		>=dev-haskell/data-default-0.3[profile?]
		<dev-haskell/data-default-0.5[profile?]
		>=dev-haskell/failure-0.1[profile?]
		=dev-haskell/http-types-0.6*[profile?]
		=dev-haskell/lifted-base-0.1*[profile?]
		=dev-haskell/monad-control-0.3*[profile?]
		dev-haskell/mtl[profile?]
		=dev-haskell/network-2.3*[profile?]
		dev-haskell/regex-compat[profile?]
		=dev-haskell/resourcet-0.3*[profile?]
		=dev-haskell/socks-0.4*[profile?]
		dev-haskell/text[profile?]
		dev-haskell/time[profile?]
		=dev-haskell/tls-0.9*[profile?]
		>=dev-haskell/tls-extra-0.4.3[profile?]
		<dev-haskell/tls-extra-0.5[profile?]
		>=dev-haskell/transformers-0.2[profile?]
		<dev-haskell/transformers-0.4[profile?]
		=dev-haskell/transformers-base-0.4*[profile?]
		>=dev-haskell/utf8-string-0.3.4[profile?]
		<dev-haskell/utf8-string-0.4[profile?]
		>=dev-haskell/void-0.5.5[profile?]
		<dev-haskell/void-0.6[profile?]
		=dev-haskell/zlib-conduit-0.4*[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( dev-haskell/hunit
			dev-haskell/wai
			dev-haskell/warp )"

src_prepare() {
	if use test; then
		cp -r "${FILESDIR}/${P}/test" "${S}" || die "can't add tests"
	fi
}

src_configure() {
	cabal_src_configure $(use test && use_enable test tests) #395351
}
