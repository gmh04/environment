# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export PATH=/usr/local/datashare/bin:$HOME/.local/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/bin
