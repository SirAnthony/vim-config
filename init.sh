#!/usr/bin/sh
mkdir -p autoload bundle
curl -LSo autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
git submodule add https://github.com/scrooloose/nerdtree.git bundle/nerdtree
git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive
git submodule add https://github.com/tpope/vim-surround.git bundle/surround
git submodule add https://github.com/tpope/vim-git.git bundle/git
git submodule add https://github.com/ervandew/supertab.git bundle/supertab
git submodule add https://github.com/mileszs/ack.vim.git bundle/ack
git submodule add https://github.com/sjl/gundo.vim.git bundle/gundo
git submodule add https://github.com/fs111/pydoc.vim.git bundle/pydoc
git submodule add https://github.com/vim-scripts/pep8.git bundle/pep8
git submodule add https://github.com/alfredodeza/pytest.vim.git bundle/py.test
git submodule add https://github.com/reinh/vim-makegreen bundle/makegreen
git submodule add https://github.com/bronson/vim-trailing-whitespace.git bundle/trailing-whitespace
git submodule add https://github.com/jeetsukumaran/vim-buffergator.git bundle/buffergator
git submodule add https://github.com/davidhalter/jedi-vim.git bundle/jedi-vim

git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git pull origin master
git submodule foreach git submodule update
