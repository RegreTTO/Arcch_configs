CONFIGS="`dirname $0`/configs"

if [ ! $USER = "root" ]; then
	echo "You are not a root. Run script as root"
	exit
fi

if [ ! -d "$HOME/.config" ]; then
	echo ".config dir was not found. Creating .config dir..."
	mkdir $HOME/.config
fi

exit

# PACKAGES INSTALLATION
pacman -S neovim python-pynvim tmux

# CONFIGS INSTALLATION
cp $CONFIGS/zshrc $HOME/.zshrc
cp -r $CONFIGS/nvim/* $HOME/.config/nvim
cp $CONFIGS/tmux/tmux.conf $HOME/.config/.tmux.conf
cp -r "$CONFIGS/tmux/pluggins" $HOME/.tmux


