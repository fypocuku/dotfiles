#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# --- Приглашение (палитра t480) ---
source /usr/share/git/completion/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=1

__prompt() {
    local code=$?
    local accent='\[\e[38;2;112;121;224m\]'
    local lavender='\[\e[38;2;167;155;205m\]'
    local pink='\[\e[38;2;242;184;240m\]'
    local urgent='\[\e[38;2;224;120;154m\]'
    local muted='\[\e[38;2;96;85;129m\]'
    local reset='\[\e[0m\]'
    local branch_icon=$'\ue0a0'

    local host=""
    [[ -n $SSH_CONNECTION ]] && host="${muted}\u@\h "

    local arrow="${pink}❯"
    local status=""
    if [[ $code -ne 0 ]]; then
        arrow="${urgent}❯"
        status="${urgent}${code} "
    fi

    PS1="${host}${accent}\w${lavender}$(__git_ps1 " ${branch_icon} %s") ${status}${arrow}${reset} "
}
PROMPT_COMMAND=__prompt
