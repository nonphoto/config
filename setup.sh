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
brew install fish
brew install deno

# Install Node
mkdir ~/.nvm
nvm install lts/*

# Install fonts
cp /Applications/Utilities/Terminal.app/Contents/Resources/Fonts/*.otf ~/Library/Fonts/
