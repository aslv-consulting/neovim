# neovim

## Installation

```bash
# Install nvim
brew install neovim

# Install packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim \\n  ~/.local/share/nvim/site/pack/packer/start/packer.nvim

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

# Refresh zshrc
source ~/.zshrc
```
