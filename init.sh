ZSH_CUSTOM=$HOME/.oh-my-zsh/custom
FONTSDIR=${XDG_DATA_HOME:-$HOME/.local/share}/fonts
[ ! -d $HOME/.oh-my-zsh ] && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh) --unattended"

ln -sf $PWD/.zshrc $HOME
ln -sf $PWD/.p10k.zsh $HOME

[ ! -d $FONTSDIR ] && mkdir -p $FONTSDIR

ln -sf $PWD/fonts/* $FONTSDIR/

[ ! -d $ZSH_CUSTOM/themes/powerlevel10k ] && git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
[ ! -d $ZSH_CUSTOM/plugins/zsh-autosuggestions ] && git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
[ ! -d $ZSH_CUSTOM/plugins/zsh-syntax-highlighting ] && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
