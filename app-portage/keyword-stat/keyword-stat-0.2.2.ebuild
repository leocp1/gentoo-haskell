# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="bin"
inherit haskell-cabal

DESCRIPTION="Display keywording for ebuilds"
HOMEPAGE="http://hackage.haskell.org/package/keyword-stat"
SRC_URI="http://code.haskell.org/~slyfox/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
		dev-haskell/cabal
		dev-haskell/pcre-light
		>=dev-lang/ghc-6.10.1"
