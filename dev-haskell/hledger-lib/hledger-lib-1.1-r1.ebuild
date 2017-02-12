# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.1.9999
#hackport: flags: -double

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Core data types, parsers and functionality for the hledger accounting tools"
HOMEPAGE="http://hledger.org"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # module name collision

RDEPEND=">=dev-haskell/base-compat-0.8.1:=[profile?]
	>=dev-haskell/blaze-markup-0.5.1:=[profile?]
	>=dev-haskell/cmdargs-0.10:=[profile?] <dev-haskell/cmdargs-0.11:=[profile?]
	dev-haskell/csv:=[profile?]
	>=dev-haskell/data-default-0.5:=[profile?]
	dev-haskell/decimal:=[profile?]
	>=dev-haskell/hashtables-1.2:=[profile?]
	dev-haskell/hunit:=[profile?]
	>=dev-haskell/megaparsec-5.0:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/mtl-compat:=[profile?]
	dev-haskell/old-time:=[profile?]
	dev-haskell/parsec:=[profile?]
	>=dev-haskell/parsers-0.5:=[profile?]
	>=dev-haskell/pretty-show-1.6.4:=[profile?]
	dev-haskell/regex-tdfa:=[profile?]
	>=dev-haskell/safe-0.2:=[profile?]
	dev-haskell/semigroups:=[profile?]
	>=dev-haskell/split-0.1:=[profile?] <dev-haskell/split-0.3:=[profile?]
	dev-haskell/system-filepath:=[profile?]
	>=dev-haskell/text-1.2:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/trifecta-0.91:=[profile?]
	dev-haskell/uglymemo:=[profile?]
	>=dev-haskell/utf8-string-0.3.5:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( >=dev-haskell/doctest-0.8
		>=dev-haskell/glob-0.7
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit )
"

src_prepare() {
	default

	cabal_chdeps \
		'megaparsec >=5.0 && < 5.2' 'megaparsec >=5.0'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-double
}