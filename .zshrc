export EDITOR=vim
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
CASE_SENSITIVE="true"
plugins=(git command-not-found zsh-syntax-highlighting zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
export PATH=$PATH
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
myfile=$( find "$HOME/.local/share/fortunes/" -type f -print0 | shuf -z -n 1 )
cat $myfile

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/lorecast162/.sdkman"
[[ -s "/home/lorecast162/.sdkman/bin/sdkman-init.sh" ]] && source "/home/lorecast162/.sdkman/bin/sdkman-init.sh"
