# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.3

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Client library for AMQP servers (currently only RabbitMQ)"
HOMEPAGE="https://github.com/hreinhardt/amqp"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+network-uri"
RESTRICT="test" #require ampq server

RDEPEND=">=dev-haskell/binary-0.5:=[profile?]
	>=dev-haskell/clock-0.4.0.1:=[profile?]
	>=dev-haskell/connection-0.2:=[profile?] <dev-haskell/connection-0.3:=[profile?]
	>=dev-haskell/data-binary-ieee754-0.4.2.1:=[profile?]
	>=dev-haskell/monad-control-0.3:=[profile?]
	>=dev-haskell/split-0.2:=[profile?]
	>=dev-haskell/text-0.11.2:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-haskell/xml-1.3:=[profile?] <dev-haskell/xml-1.4:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	network-uri? ( >dev-haskell/network-2.6:=[profile?]
			>=dev-haskell/network-uri-2.6:=[profile?] )
	!network-uri? ( <dev-haskell/network-2.6:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/hspec-1.3
		>=dev-haskell/hspec-expectations-0.3.3 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag network-uri network-uri)
}
