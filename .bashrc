#.bashrc

IFS='.' read -r box env smb group city blargh <<< `hostname`
# Δ ϟ ǂ ᐉ ₪ ✕ ✖ ᛃ ⁘ ♖ ✓ 仒 亽 合 厶龱 ꏍꔹ ꗈ ꙮ ꛎ 옷 우 ܍

 
#SYMBOL='Δ'
#SYMBOL='ᐉ'
#SYMBOL='ϟ'
#SYMBOL='♱'
SYMBOL='ᛃ'
#SYMBOL='-'
SYMBOL_COLOR='91'
REJLARTEXT='37'
DIRTEXT='90'
 
if [ "x$group" == "xqa" ]; then
  SYMBOL_COLOR='36'
fi
if [ "x$env" == "xb" ]; then
  SYMBOL='♱'
fi
if [ "x$box" == "xPhilippes-iMac-2 local" ]; then
  SYMBOL='ꗈ'
fi
if [ "x$box" == "xdocker0001" ]; then
  SYMBOL='ꔹ'
fi
if [ "x$box" == "xfs1" ]; then
  SYMBOL='⁘'
  if [ "x$env" == "xb" ]; then
    SYMBOL='ꙮ'
  fi
fi
if [ "x$box" == "xdocker" ]; then
  SYMBOL='ꏍ'
fi
if [ "x$box" == "xjumpbox" ]; then
  SYMBOL='-|- '
fi
if [ "x$box" == "xdockerhost-01" ]; then
  SYMBOL='-|- '
  SYMBOL_COLOR='36'
fi
if [ "x$city" == "xaustin" ]; then
  SYMBOL=$SYMBOL' ✓'
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
 
export PS1="\[\e[${DIRTEXT}m\]\W \[\e[${SYMBOL_COLOR}m\]${SYMBOL} \[\e[\034\e[${REJLARTEXT}m\]"
export PYTHONPATH=$HOME/smb-setup/3.2/migration/:$PYTHONPATH
export PYTHONPATH=$HOME/smb-setup/3.2/migration/util/:$PYTHONPATH
 
export PATH=$PATH:/home/afischer/bin
export HISTFILESIZE=1073741824
shopt -s histappend
export LSCOLORS=Exfxcxdxbxegedabagacad
 
alias ll='ls -la'
alias c='pushd > /dev/null'
alias c_='popd'
alias rfr='source ~/.bash_profile'
alias s='sudo'
