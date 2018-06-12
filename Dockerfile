# Usage: docker build .
# Usage: ddocker run tpruvot/cpuminer-multi -a cryptonight --url=stratum+tcp://xdn-xmr.pool.minergate.com:45790 --user=ernanbaldomero@gmail.com --pass=x

FROM		ubuntu:14.04
MAINTAINER	Tanguy Pruvot <tanguy.pruvot@gmail.com>

RUN		apt-get update -qq

RUN		apt-get install -qy automake autoconf pkg-config libcurl4-openssl-dev libssl-dev libjansson-dev libgmp-dev make g++ git

RUN		git clone https://github.com/tpruvot/cpuminer-multi -b linux

RUN		cd cpuminer-multi && ./build.sh

WORKDIR		/cpuminer-multi
ENTRYPOINT	["./cpuminer"]
