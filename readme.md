# Installation instructions
Ensure terminal theme is set to [Solarized Dark](http://ethanschoonover.com/solarized) and the terminal is using a [Nerd Font](https://nerdfonts.com). My preferred font is FiraCode ([download link](https://github.com/ryanoasis/nerd-fonts/releases/download/v1.1.0/FiraCode.zip)). On macOS you can install it using [Homebrew](https://brew.sh): `brew tap caskroom/fonts` then `brew cask install font-firacode-nerd-font`.

To install the configuration files do the following:
```
cd ~/.config
sudo rm -r fish fisherman
git clone https://github.com/malob/config.fish.git
mv config.fish fish
fisher
fisher up
```

# Additional notes
In `config.fish` I've got the following alias setup:
```
 alias cat="ccat"
```
[ccat](https://github.com/jingweno/ccat) is similar to `cat` but with syntax highlighting. If you aren't using `ccat` you'll definitely want to remove that line.

If you use Asana, you might want to have a look at the `asana.fish` function I coded up. It's a very minimal function to create new tasks in Asana.
