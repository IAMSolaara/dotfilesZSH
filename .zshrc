export EDITOR=nvim
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
CASE_SENSITIVE="true"
plugins=(git command-not-found zsh-syntax-highlighting zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

export PATH=$PATH:$HOME/.gem/ruby/2.7.0/bin:/opt/nxdk-jfr/usr/bin

#export NXDK_DIR=/opt/nxdk-jfr

[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

if [[ -d $HOME/.local/share/fortunes ]]; then
	myfile=$( find "$HOME/.local/share/fortunes/" -type f -print0 | shuf -z -n 1 )
	cat $myfile
fi
alias vim=nvim

export VITASDK=/usr/local/vitasdk
export PATH=$VITASDK/bin:$PATH

[[ -f $HOME/.config/plasma-workspace/env/doomWads.sh ]] && source $HOME/.config/plasma-workspace/env/doomWads.sh

export FPCDIR=/usr/lib/fpc/3.2.0/

alias vbam=visualboyadvance-m

export MPD_HOST=172.16.7.1

source /usr/share/nvm/init-nvm.sh
nvm use node > /dev/null

# stuff for GenDev (sega genesis development)
export GENDEV=/opt/gendev
export GDK=/opt/gendev

# stuff for perl and cpan install thingy?
PATH="/home/lorecast162/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/lorecast162/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/lorecast162/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/lorecast162/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/lorecast162/perl5"; export PERL_MM_OPT;

# stuff for emscripten
alias activate_emsdk='source "/home/lorecast162/emsdk/emsdk_env.sh" > /dev/null 2>&1'

# stuff for android stuff I guess
export ANDROID_HOME=$HOME/Android/Sdk
export ANDROID_SDK_ROOT=$ANDROID_HOME
export PATH=$PATH:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools

command -v paru > /dev/null && alias yay=paru ||

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/lorecast162/.sdkman"
[[ -s "/home/lorecast162/.sdkman/bin/sdkman-init.sh" ]] && source "/home/lorecast162/.sdkman/bin/sdkman-init.sh"
