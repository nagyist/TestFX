#!/usr/bin/env bash

# vim :set ts=2 sw=2 sts=2 et:
if [[ "${TRAVIS_OS_NAME}" == osx ]]; then
  brew update
  brew cask reinstall java
  brew outdated gradle || brew upgrade gradle
  brew unlink python # fixes 'run_one_line' is not defined error in backtrace
fi

