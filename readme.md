# Installation instructions
Ensure terminal theme is set to [Solarized Dark](http://ethanschoonover.com/solarized) and the terminal is using a [Nerd Font](https://nerdfonts.com).

My preferred font is FiraCode ([download link](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.1.0/FiraCode.zip)). On macOS you can install it using [Homebrew](https://brew.sh):
```
brew tap caskroom/fonts
brew cask install font-firacode-nerd-font
```

To install the configuration files do the following:
```
cd ~/.config
sudo rm -r fish fisherman
git clone https://github.com/malob/config.fish.git
mv config.fish fish
fisher
fisher up
```
