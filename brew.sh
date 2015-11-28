#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php56 --with-gmp

# Install other useful binaries.
brew install ack
brew install dark-mode
brew install git
brew install git-lfs

#LS - my additional installs
brew install atk
brew install cairo
brew install cloog
brew install faac
brew install ffmpeg
brew install fontconfig
brew install freetype
brew install gcc
brew install gdk-pixbuf
brew install gettext
brew install gfortran
brew install ghc
brew install glib
brew install gmp
brew install gobject-introspection
brew install gtk+
brew install harfbuzz
brew install icu4c
brew install imagemagick
brew install isl
brew install jpeg
brew install lame
brew install libffi
brew install libmpc
brew install libpng
brew install libtiff
brew install libtool
brew install mpfr
brew install mplayer
brew install openssl
brew install pango
brew install pixman
brew install pkg-config
brew install r
brew install readline
brew install wget
brew install x264
brew install xvid
brew install xz

# Remove outdated versions from the cellar.
brew cleanup
