# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.3

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="An entity-relationship diagram generator from a plain text description"
HOMEPAGE="https://github.com/BurntSushi/erd"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/graphviz-2999:= <dev-haskell/graphviz-3000:=
	>=dev-haskell/parsec-3.1:= <dev-haskell/parsec-3.2:=
	>=dev-haskell/text-1:= <dev-haskell/text-2:=
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

PATCHES=("${FILESDIR}"/${PN}-0.1.3.0.patch)