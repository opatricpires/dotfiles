#!/bin/bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo apt-get install zsh
cp .zshrc ~/.zshrc


# install nvm
sh -c "$(curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash)"

export NVM_DIR="$HOME/.nvm" && (
  git clone https://github.com/creationix/nvm.git "$NVM_DIR"
  cd "$NVM_DIR"
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
) && \. "$NVM_DIR/nvm.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm --version

# install git
sudo apt-get install git

# install vscode extensions
code --install naumovs.color-highlight
code --install dbaeumer.vscode-eslint
code --install dbaeumer.jshint
code --install guillaumedoutriaux.name-that-color
code --install michelemelluso.code-beautifier
code --install zignd.html-css-class-completion
code --install ritwickdey.liveserver
code --install shinnn.stylelint
code --install calvinhong.stylelint-fix
code --install eamodio.gitlens
