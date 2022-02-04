# Set MANPAGER
set -x MANPAGER "sh -c 'col -bx |bat -l man -p'"
# Setting my prompt
# ◆ ~ ❯❯❯
# setting some vars
export TTRV_EDITOR="nvim"
export KUNST_POSITION="+1645+45"
export KUNST_SIZE="250x250"
export KUNST_MUSIC_DIR="/home/jzdoot/Music"
export EDITOR="nvim"
export VISUAL="emacs"
export BROWSER="librewolf"
export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"
# Aliases
alias ..="cd .."
alias ...="cd ../.." 
alias ....="cd ../../.." 
alias cl="clear" 
alias clock="tty-clock -csC3" 
alias 8080="surf http://localhost:8080/" 
alias jf="jftui" 
alias ls="exa -ahl --color=always --group-directories-first" 
alias la="exa -a" 
alias music="ncmpcpp" 
alias pro="protonvpn" 
alias qbtl="surf192.168.1.3:8081" 
alias sp="sudo aura" 
alias supro="sudo protonvpn" 
alias tm="trackma-curses" 
alias tmtui="trackma" 
alias vim="nvim" 
alias weth="curl 'wttr.in/columbus?u1Q'" 
alias weth0="curl 'wttr.in/columbus?u1Q'" 
alias weth3="curl 'wttr.in/columbus?u3Q'" 
alias ytd="ytfzf -df" 
alias yt="ytfzf"
alias fc="fzfc" 
alias fs="fzfs" 
alias fsh="fzfsh"
alias clear="clear && pfetch" 
# alias ytd="yt-dlp --write-srt --sub-lang en" 
alias youtube-dl="yt-dlp"
alias wtw="wtwitch" 
alias v="nvim" 
alias steam="steam-tui" 
# alias p="pacman" 
alias p="aura" 
# alias y="yay" 
alias r="ranger" 
alias z="zathura"
alias m="ncmpcpp"
alias fp="fzfp"
alias py="python"
# alias tsp="ts"
alias c="tty-clock -csC3"
# alias n="newsboat"
# alias news="newboat"
alias g="git"
alias ga="git add"
alias gaa="git add -A"
alias gc="git commit"
alias gca="git commit -a"
alias gp="git push"
alias gs="git status"
alias ac="watch -pn .5 'xdotool click --delay 1 1 ; figlet -c clicking'"
alias acf="watch -pn .0001 'xdotool click --delay .5 1 ; figlet -c clicking'"
alias df="/usr/bin/git --git-dir=$HOME/.dotfile/ --work-tree=$HOME"
alias b="bat"
alias yay="paru"
alias mu="mupdf"
alias fpf="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
alias tree="exa -T --color=never"
alias tt="timetrace"
alias ipa="ip -c a"
# cd aliases
alias cd.ap="cd $HOME/Documents/apcsa"
alias cd.ap.j="cd $HOME/Documents/apcsa/java"
alias cd.ap.p="cd $HOME/Documents/apcsa/java/projects"
alias cd.ap.l="cd $HOME/Documents/apcsa/java/labs"
alias cd.git="cd $HOME/git"
alias cd.v="cd $HOME/Videos"
alias cd.v.yt="cd $HOME/Videos/yt"
alias cd.c="cd $HOME/.config"
# Functions
function f
	fzf --preview 'bat --style=numbers --color=always --line-range :500 {}' | xclip -selection clipboard
end
function fv
	fzf --preview 'bat --style=numbers --color=always --line-range :500 {}' | xargs nvim
end
function fb
	fzf --preview 'bat --style=numbers --color=always --line-range :500 {}' | xargs bat
end
function his
	history | fzf -i +m | xclip -r -selection clipboard
end
function wtwc
	echo 'watchout will mess with colors in the terminal' && sleep 5
	watch -cn 30 wtwitch c
end
function lbtf
	# lbt feed | fzf -i +m | awk '{print $NF}' | xargs lbt open ''
	set choice (lbt feed | fzf -i +m | awk '{print $NF}')
	lbt open "$choice"
end
function lbtr
	lbt ls | awk '{print $5}' | fzf -i +m | xargs -0 lbt rm -f
end
# function gpa
# 	git push
# 	git push --mirror github
# end
function ytdf
	ytfzf -tL |xargs -0 youtube-dl --write-srt --sub-lang en ''
end
function javar
	javac -g Main.java ; java -cp . Main ; rm -rf *.class
end
function gpa
	git push all
	git push
end
# Autorun
fish_vi_key_bindings
pfetch
#prompt
starship init fish | source
