source ./config/shell/profile
mkdir -p $XDG_CONFIG_HOME/
mkdir -p ~/.local/bin/
mkdir -p ~/.local/share/fonts
mkdir -p ~/.cache/zsh
mkdir -p ~/Pictures/wallpapers

touch ~/.cache/zsh/history
cp -r ./config/shell $XDG_CONFIG_HOME/
ln -s $XDG_CONFIG_HOME/shell/profile ~/.zprofile
cp ./undefined-medium.ttf ~/.local/share/fonts
cp ./config/xinitrc ~/.xinitrc
cp -r ./config/nvim $XDG_CONFIG_HOME/
cp -r ./config/zsh $XDG_CONFIG_HOME/
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting $XDG_CONFIG_HOME/zsh/fast-syntax-highlighting
cp -r ./config/picom $XDG_CONFIG_HOME/
cp ./scripts/bar ~/.local/bin/
cp ./bg.jpg ~/Pictures/wallpapers/
