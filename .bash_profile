export VISUAL=code
export EDITOR="$VISUAL"
export PATH=${PATH}:~/bin

PS1='\[\e[1m\][\W] $(__git_ps1 "(%s) ")\[\e[0m\]'

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"

alias love="/Applications/love.app/Contents/MacOS/love"

function cdp {
	cd ~/projects/$1
}

function ff {
	 nohup /Applications/Firefox\ Developer\ Edition.app/Contents/MacOS/firefox -foreground -start-debugger-server &
}

function mcserver {
	java -Xmx1024M -Xms1024M -jar $1 nogui
}

function run-sketch {
    processing-java --sketch=`pwd`$1 --output=`pwd`"/out" --force --run;
    rm -rf 'pwd'"/out";
}

function new-sketch {
    mkdir $1; touch $1/$1.pde; cd $1;
}

function colors {
	echo -e "\033[0;30mBLACK\t\033[1;30mBRIGHT_BLACK"
	echo -e "\033[0;31mRED\t\033[1;31mBRIGHT_RED"
	echo -e "\033[0;32mGREEN\t\033[1;32mBRIGHT_GREEN"
	echo -e "\033[0;33mYELLOW\t\033[1;33mBRIGHT_YELLOW"
	echo -e "\033[0;34mBLUE\t\033[1;34mBRIGHT_BLUE"
	echo -e "\033[0;35mPURPLE\t\033[1;35mBRIGHT_PURPLE"
	echo -e "\033[0;36mCYAN\t\033[1;36mBRIGHT_CYAN"
	echo -e "\033[0;37mGRAY\t\033[1;37mBRIGHT_GRAY"
	echo -e "\033[0mNO_COLOR"
}

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion || {
    # if not found in /usr/local/etc, try the brew --prefix location
    [ -f "$(brew --prefix)/etc/bash_completion.d/git-completion.bash" ] && \
        . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
}

source $(brew --prefix nvm)/nvm.sh
