#.bashrc

IFS='.' read -r hname blargh <<< `hostname`
# Δ ϟ ǂ ᐉ ₪ ✕ ✖ ᛃ ⁘ ♖ ✓ 仒 亽 合 厶龱 ꏍꔹ ꗈ ꙮ ꛎ 옷 우 ܍
 
#SYMBOL='Δ'
#SYMBOL='ᐉ'
#SYMBOL='ϟ'
#SYMBOL='♱'
SYMBOL='厶'
#SYMBOL='ᛃ'
#SYMBOL='-'
RED='0;91'
GREEN='0;32'
BLUE='0;34'
WHITE='0;97'
GOLD='33'
SYMBOL_COLOR=$RED
REJLARTEXT=$GREEN
DIRTEXT=$BLUE

if [ "$hname" == "linode01" ]; then
  SYMBOL_COLOR=$GOLD
  SYMBOL='ꙮ '
  DIRTEXT=$GREEN
  REJLARTEXT=$BLUE
fi
 
if [ "$EUID" -eq 0 ]; then
  # is root
  SYMBOL_COLOR=$BLUE
  REJLARTEXT=$RED
  DIRTEXT=$WHITE
fi
 
export PS1="\[\e[${DIRTEXT}m\]\W \[\e[${SYMBOL_COLOR}m\]${SYMBOL}\[\e[${REJLARTEXT}m\]"
 
export PATH=$PATH:~/bin:~/.local/bin
export HISTFILESIZE=1073741824
shopt -s histappend
export LSCOLORS=Exfxcxdxbxegedabagacad
 
alias ls='ls --color=auto'
alias ll='ls -la'
alias c='pushd > /dev/null'
alias c_='popd'
alias rfr='source ~/.bash_profile'
alias s='sudo'
alias dps='docker ps --format "table {{.Names}}\t{{.ID}}\t{{.Status}}\t{{.Networks}}\t{{.Ports}}\t{{.Mounts}}"'

