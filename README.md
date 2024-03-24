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

### Recommended terminal emulator
I recommend to use Alacritty with tmux.

```
brew install --cask alacritty
```

Alacritty configuration (~/.config/alacritty.toml):
```
[font]
size = 13

[font.bold]
family = "JetBrains Mono"
style = "Bold"

[font.bold_italic]
family = "JetBrains Mono"
style = "Bold Italic"

[font.italic]
family = "JetBrains Mono"
style = "Italic"

[font.normal]
family = "JetBrains Mono"
style = "Regular"
```
#### Tmux
I recommend using tmux for tab and split screen support.

When using tmux we may need to fix the color scheme depending on the emulator.

In case of Alacritty we can fix the scheme by adding `set-option -a terminal-overrides ",alacritty:RGB"` to `~/.config/tmux/tmux.conf` file. 

It is also advised to enable mouse in tmux: `set -g mouse on`

tmux.conf with a few conveniency bindings:
```
set-option -a terminal-overrides ",alacritty:RGB"
set -g mouse on

bind '"' split-window -c "#{pane_current_path}"
bind % split-window -h -c "#{pane_current_path}"
```
