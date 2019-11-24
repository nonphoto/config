# Install or update Homebrew
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# Brew installs
brew install trash
brew install git bash-completion
brew install nvm

# Install Node
mkdir ~/.nvm
nvm install lts/*

# Install Rust
if test ! $(which rustc); then
  echo "Installing Rust..."
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

# Rust installs
cargo install eva

# Install fonts
cp /Applications/Utilities/Terminal.app/Contents/Resources/Fonts/*.otf ~/Library/Fonts/
