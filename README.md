# Config
My macOS environment, using [this strategy from Atlassian](https://www.atlassian.com/git/tutorials/dotfiles). Basically I set up

```
git clone --bare https://github.com/nonphoto/config.git $HOME/.cfg
config checkout
config config --local status.showUntrackedFiles no
```
