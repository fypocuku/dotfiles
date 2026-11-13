#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ "$(tty)" = "/dev/tty1" ]; then
export PATH="$HOME/.local/bin:$PATH"
	exec sway
fi
