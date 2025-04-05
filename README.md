# neovim

## Installation

```bash
# Install nvim
brew install neovim

# Install packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim \\n  ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Install node
brew install node

# Install plugins
npm install -g intelephense
brew install phpstan
brew install php-code-sniffer
npm install -g eslint
npm install -g markdownlint-cli
brew install pylint
brew install luarocks
luarocks install xml2lua
luarocks install mimetypes
npm install -g tslib

# Configure plugins
phpcs --config-set default_standard PSR12

# Link config
ln -s ~/projects/neovim ~/.config/nvim

# Refresh zshrc
source ~/.zshrc

# Configure plugin neovim
# Run v
# In command mode
:PackerSync
```
