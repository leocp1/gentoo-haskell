# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A framework for safe, programmable, speculative parallelism"
HOMEPAGE="http://github.com/ekmett/speculation"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT="test"

RDEPEND=">=dev-haskell/stm-2.1[profile?]
		<dev-haskell/stm-2.4[profile?]
		=dev-haskell/tag-bits-0.1*[profile?]
		>=dev-haskell/transformers-0.2.2.0[profile?]
		<dev-haskell/transformers-0.4[profile?]
		>=dev-lang/ghc-7.0.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
