```
# Step 1: Setup repo
git init
git remote add origin git@github.com:johnkchow/dotfiles.git
git submodule update --init --recursive

# Step 2: Important brew packages
# First, go Homebrew for latest shell command to install

brew install macvim
brew install fzf
brew install ripgrep
brew install gh
# Node is a dependency for coc.nvim
brew install node@16 && brew link node@16

# if using bash
brew install bash-git-prompt

# Step 3: Setup vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Step 4: Git
git config --global core.fsmonitor true
git config --global core.untrackedCache true
git config --global alias.co checkout
```
