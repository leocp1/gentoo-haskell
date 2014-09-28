# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Cairo backend for diagrams drawing EDSL"
HOMEPAGE="http://projects.haskell.org/diagrams"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cairo-0.12.4:=[profile?] <dev-haskell/cairo-0.14:=[profile?]
	dev-haskell/colour:=[profile?]
	>=dev-haskell/data-default-class-0.0.1:=[profile?] <dev-haskell/data-default-class-0.1:=[profile?]
	>=dev-haskell/diagrams-core-1.2:=[profile?] <dev-haskell/diagrams-core-1.3:=[profile?]
	>=dev-haskell/diagrams-lib-1.2:=[profile?] <dev-haskell/diagrams-lib-1.3:=[profile?]
	>=dev-haskell/hashable-1.1:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/juicypixels-3.1.3.2:=[profile?] <dev-haskell/juicypixels-3.2:=[profile?]
	>=dev-haskell/lens-3.8:=[profile?] <dev-haskell/lens-4.5:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/optparse-applicative-0.10:=[profile?] <dev-haskell/optparse-applicative-0.11:=[profile?]
	>=dev-haskell/pango-0.12.5:=[profile?] <dev-haskell/pango-0.14:=[profile?]
	>=dev-haskell/split-0.1.2:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-haskell/statestack-0.2:=[profile?] <dev-haskell/statestack-0.3:=[profile?]
	>=dev-haskell/transformers-0.3:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-haskell/vector-0.10.0:=[profile?] <dev-haskell/vector-0.11:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

src_prepare() {
	cabal_chdeps \
		'lens >= 3.8 && < 4.4' 'lens >= 3.8 && < 4.5'
}
