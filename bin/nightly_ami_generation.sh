#!/usr/local/bin/zsh -l

apps=(fp dm auctions)

cd $HOME/Development/nfg/nfg-infrastructure/scripts
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH


for app in $apps; do
  ./build_and_deploy.sh build_both $app beta
done