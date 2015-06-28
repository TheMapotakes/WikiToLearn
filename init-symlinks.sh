#!/bin/bash


# NOTE If you add a symlink here, please add it also to clean-symlinks.sh

CWD="$( 
  cd "$(dirname "$(readlink "$0" || printf %s "$0")")"
  pwd -P 
)"

cd $CWD;

# should be a no-op, but you never know...
./clean-mediawiki.sh

# do the symlinks dance
ln -s LocalSettings.php mediawiki/LocalSettings.php
ln -s Neverland mediawiki/skins/Neverland
ln -s extensions mediawiki/extensions
ln -s dbconfig mediawiki/dbconfig
ln -s favicon.ico mediawiki/favicon.ico





