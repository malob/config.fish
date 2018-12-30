# Installation instructions
Ensure terminal theme is set to [Solarized Dark](http://ethanschoonover.com/solarized) and the terminal is using a [Nerd Font](https://nerdfonts.com).

My preferred font is FiraCode ([download link](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.1.0/FiraCode.zip)). 

On macOS you can install it using [Homebrew](https://brew.sh):
```bash
brew tap caskroom/fonts
brew cask install font-firacode-nerd-font
```

In [Blink Shell](https://www.blink.sh) you can import the Nerd Font variant of Fira Code from this link:
https://gist.github.com/malob/926ba3c6c8bbe3a45fdcfa89d3a76fd6/raw/822078d27c9e967beac84b3d903d811b9ff6ebc6/Fira%2520Code%2520Nerd%2520Font.css

To install the configuration files do the following:
```bash
cd ~/.config
rm -r fish fisher fisherman
git clone https://github.com/malob/config.fish.git fish
fisher
fisher self-update
```
