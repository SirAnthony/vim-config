#!/usr/bin/sh
mkdir -p autoload bundle
curl -LSo autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

module (){
  local bundle=$2
  if [ "$bundle" == "" ]; then
    bundle=$(basename $1);
    bundle=${bundle%-vim}
    bundle=${bundle%.vim}
    bundle=${bundle#vim-}
  fi
  git submodule add -f https://github.com/$1.git bundle/$bundle
}

# Load modules
module scrooloose/nerdtree
module tpope/vim-fugitive
module tpope/vim-surround
module tpope/vim-git
module ervandew/supertab
module mileszs/ack.vim
module sjl/gundo.vim
module fs111/pydoc.vim
module vim-scripts/pep8
module alfredodeza/pytest.vim
module reinh/vim-makegreen
module bronson/vim-trailing-whitespace
module jeetsukumaran/vim-buffergator
module davidhalter/jedi-vim
module xolox/vim-session
module xolox/vim-misc session-misc
module leafgarland/typescript-vim
module dense-analysis/ale


git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git pull origin master
git submodule foreach git submodule update
# Remove submodules back
git rm -r --cached -f bundle/

cp vimrc ~/.vimrc
