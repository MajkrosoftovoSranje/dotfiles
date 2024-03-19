#!/usr/bin/env sh

ROOT_DIR="$HOME/Documents/dotfiles"
ln -s $ROOT_DIR/.config/dunst $HOME/.config
ln -s $ROOT_DIR/.config/foot $HOME/.config
mkdir $HOME/.config/git 2>/dev/null
ln -s $ROOT_DIR/.config/git/config $HOME/.config/git # f
ln -s $ROOT_DIR/.config/gtk-3.0 $HOME/.config
ln -s $ROOT_DIR/.config/htop $HOME/.config
ln -s $ROOT_DIR/.config/hypr/hyprland.org $HOME/.config/hypr # f
ln -s $ROOT_DIR/.config/hypr/hyprpaper.conf $HOME/.config/hypr # f
ln -s $ROOT_DIR/.config/hypr/scripts $HOME/.config/hypr
ln -s $ROOT_DIR/.config/lf $HOME/.config
ln -s $ROOT_DIR/.config/MangoHud $HOME/.config
ln -s $ROOT_DIR/.config/swappy $HOME/.config
ln -s $ROOT_DIR/.config/swaylock $HOME/.config
mkdir $HOME/.config/tmux 2>/dev/null
ln -s $ROOT_DIR/.config/tmux/tmux.conf $HOME/.config/tmux # f
ln -s $ROOT_DIR/.config/tmux/binds.conf $HOME/.config/tmux # f
ln -s $ROOT_DIR/.config/tmux/navigator.conf $HOME/.config/tmux # f
ln -s $ROOT_DIR/.config/tofi $HOME/.config
ln -s $ROOT_DIR/.config/waybar $HOME/.config
ln -s $ROOT_DIR/.config/wlogout $HOME/.config
ln -s $ROOT_DIR/.config/yt-dlp $HOME/.config
ln -s $ROOT_DIR/.config/ytfzf $HOME/.config
mkdir -p $HOME/.config/zsh/plugins 2>/dev/null
ln -s $ROOT_DIR/.config/zsh/aliasrc $HOME/.config/zsh # f
ln -s $ROOT_DIR/.config/zsh/.zshrc $HOME/.config/zsh # f
ln -s $ROOT_DIR/.config/zsh/.zprofile $HOME/.config/zsh # f
ln -s $ROOT_DIR/.config/zsh/.p10k.zsh $HOME/.config/zsh # f
ln -s $ROOT_DIR/.config/zsh/plugins/zsh-autosuggestions.zsh $HOME/.config/zsh/plugins # f
ln -s $ROOT_DIR/.config/zsh/plugins/zsh-fzf-history-search.zsh $HOME/.config/zsh/plugins # f
mkdir -p $HOME/.config/mpv 2>/dev/null
ln -s $ROOT_DIR/.config/mpv/mpv.conf $HOME/.config/mpv # f
ln -s $ROOT_DIR/.config/pcmanfm $HOME/.config
ln -s $ROOT_DIR/.config/nvim $HOME/.config
