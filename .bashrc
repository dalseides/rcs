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
SYMBOL_COLOR='0;91'
REJLARTEXT='0;96'
DIRTEXT='0;94'

if [ "$hname" == "linode01" ]; then
  SYMBOL='♖ '
  SYMBOL_COLOR='33'
  DIRTEXT='34'
fi
 
if [ "$EUID" -eq 0 ]; then
  # is root
  CURRENT=$SYMBOL_COLOR
  SYMBOL_COLOR=$REJLARTEXT
  if [ "$CURRENT" -gt 50 ]; then
    REJLARTEXT=$(( CURRENT - 60 ))
    REJLARTEXT="0;$REJLARTEXT"
  else
    REJLARTEXT=$CURRENT
  fi
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
