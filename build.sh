#! /bin/bash

printf "\t=========== Building contracts for CODEX ===========\n\n"

RED='\033[0;31m'
NC='\033[0m'
txtbld=$(tput bold)
bldred=${txtbld}$(tput setaf 1)
txtrst=$(tput sgr0)

mkdir -p build
pushd build &> /dev/null

if [ -z "$CMAKE" ]; then
  CMAKE=$( command -v cmake )
fi

"$CMAKE" ../
if [ $? -ne 0 ]; then
   exit -1;
fi
make -j${CORES}
if [ $? -ne 0 ]; then
   exit -1;
fi
popd &> /dev/null

printf "\n${bldred}\t      ___           ___          _____          ___           ___     \n"
printf "\t     /  /\         /  /\        /  /::\        /  /\         /__/|    \n"
printf "\t    /  /:/        /  /::\      /  /:/\:\      /  /:/_       |  |:|    \n"
printf "\t   /  /:/        /  /:/\:\    /  /:/  \:\    /  /:/ /\      |  |:|    \n"
printf "\t  /  /:/  ___   /  /:/  \:\  /__/:/ \__\:|  /  /:/ /:/_   __|__|:|    \n"
printf "\t /__/:/  /  /\ /__/:/ \__\:\ \  \:\ /  /:/ /__/:/ /:/ /\ /__/::::\____\n"
printf "\t \  \:\ /  /:/ \  \:\ /  /:/  \  \:\  /:/  \  \:\/:/ /:/    ~\~~\::::/\n"
printf "\t  \  \:\  /:/   \  \:\  /:/    \  \:\/:/    \  \::/ /:/      |~~|:|~~ \n"
printf "\t   \  \:\/:/     \  \:\/:/      \  \::/      \  \:\/:/       |  |:|   \n"
printf "\t    \  \::/       \  \::/        \__\/        \  \::/        |  |:|   \n"
printf "\t     \__\/         \__\/                       \__\/         |__|/    \n${txtrst}"

printf "\\tFor more information:\\n"
printf "\\tCODEX website: http://www.codex.network/#/en\\n"
