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
nvm install node

# Install fonts
cp /Applications/Utilities/Terminal.app/Contents/Resources/Fonts/*.otf ~/Library/Fonts/