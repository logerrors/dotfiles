#!/usr/bin/env bash

set -e

if ! command -v brew &> /dev/null
then
  echo "brew not found, install ..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "brew found.."
fi

if ! command -v rg  &> /dev/null
then
  echo "ripgrep not found, install ..."
  brew install ripgrep
else
  echo "ripgrep found.."
fi

if ! command -v fd &> /dev/null
then
  echo "fd-find not found, install ..."
  brew install fd
else
  echo "fd-find found.."
fi

if ! command -v git &> /dev/null
then
  echo "git not found, install ..."
  brew install git
else
  echo "git found.."
fi

if ! command -v tree-sitter &> /dev/null
then
  echo "tree-sitter not found, install ..."
  brew install tree-sitter
else
  echo "tree-sitter found.."
fi

if ! command -v nvim &> /dev/null
then
 echo "neovim not found, install ..."
 brew install neovim
else
  echo "neovim found.."
fi


