# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Simple force-directed layout"
HOMEPAGE="http://hackage.haskell.org/package/force-layout"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/data-default-class-0.0.1:=[profile?] <dev-haskell/data-default-class-0.1:=[profile?]
	>=dev-haskell/lens-3.0:=[profile?] <dev-haskell/lens-4.15:=[profile?]
	>=dev-haskell/linear-1.10:=[profile?] <dev-haskell/linear-1.21:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"