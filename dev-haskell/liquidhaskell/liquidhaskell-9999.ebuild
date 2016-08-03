# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5
#hackport: flags: -devel,-include

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal git-r3

DESCRIPTION="Liquid Types for Haskell"
HOMEPAGE="http://goto.ucsd.edu/liquidhaskell"
EGIT_REPO_URI="https://github.com/ucsd-progsys/liquidhaskell.git"
EGIT_BRANCH="develop"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS=""
IUSE=""

RESTRICT=test # fails tests, needs investigation

RDEPEND=">=dev-haskell/aeson-0.10:=[profile?]
	>=dev-haskell/bifunctors-5.1:=[profile?]
	>=dev-haskell/cabal-1.18:=[profile?]
	dev-haskell/cereal:=[profile?]
	>=dev-haskell/cmdargs-0.10:=[profile?]
	dev-haskell/daemons:=[profile?]
	>=dev-haskell/data-default-0.5:=[profile?]
	>=dev-haskell/diff-0.3:=[profile?]
	>=dev-haskell/exceptions-0.6:=[profile?]
	>=dev-haskell/fingertree-0.1:=[profile?]
	>=dev-haskell/ghc-paths-0.1:=[profile?]
	>=dev-haskell/hashable-1.2:=[profile?]
	dev-haskell/hint:=[profile?]
	>=dev-haskell/hscolour-1.22:=[profile?]
	dev-haskell/liquid-fixpoint:=[profile?]
	dev-haskell/liquiddesugar:=[profile?]
	dev-haskell/located-base:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?]
	dev-haskell/network:=[profile?]
	>=dev-haskell/parsec-3.1:=[profile?]
	dev-haskell/prover:=[profile?]
	>=dev-haskell/quickcheck-2.7:2=[profile?]
	>=dev-haskell/syb-0.4.4:=[profile?]
	>=dev-haskell/temporary-1.2:=[profile?]
	>=dev-haskell/text-1.2:=[profile?]
	dev-haskell/text-format:=[profile?]
	dev-haskell/th-lift:=[profile?]
	>=dev-haskell/transformers-0.3:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	>=dev-lang/ghc-7.10.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/optparse-applicative-0.11
		>=dev-haskell/stm-2.4
		>=dev-haskell/tagged-0.7.3
		>=dev-haskell/tasty-0.10
		dev-haskell/tasty-ant-xml
		>=dev-haskell/tasty-hunit-0.9
		>=dev-haskell/tasty-rerun-1.1 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-devel \
		--flag=-include
}
