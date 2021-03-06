# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Specify Haskell project templates and generate files"
HOMEPAGE="https://github.com/fpco/haskell-ide"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/base64-bytestring:=[profile?]
	>=dev-haskell/conduit-1.2.8:=[profile?] <dev-haskell/conduit-1.4:=[profile?]
	dev-haskell/conduit-extra:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?]
	>=dev-haskell/resourcet-0.4.3:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/hspec-1.3
		dev-haskell/quickcheck )
"
