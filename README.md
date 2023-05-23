# nsvim
Minimal configuration to turn Neovim into a Java IDE

### Prerequisite
Only nvim is needed

#### MacOS
```
brew install nvim
```

### Install
Clone the repository wherever you want and create a symlink under ~/.config to the nvim folder:
```
ln -s <path-to>/nsvim/nvim /Users/<user>/.config/nvim
```

Install Packer from [here](https://github.com/wbthomason/packer.nvim).
MacOS:
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Open packer.lua: `nvim packer.lua`, then type `:so` and `:PackerSync`.

Restart nvim, type `:Mason`. Select `jdtls`, press `i` to install.

### Recommended Fonts
JetBrains Mono is recommended. You can obtain it [here](https://www.jetbrains.com/lp/mono/).

In the archive there are plenty of fonts, however you only need a few:
- JetBrainsMono-Regular.ttf
- JetBrainsMono-Bold.ttf
- JetBrainsMono-Italic.ttf
- JetBrainsMono-BoldItalic.ttf

Set them in your favourite terminal emulator.
