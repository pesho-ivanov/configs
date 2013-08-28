alias diri='find . ! -name tags | xargs grep -sin --color'
alias ll='ls -la'

function makec {
  echo $(tput clear)$(tput cup 20 0)
  echo make $1 ...
  tbld=$(tput bold)
  trst=$(tput rmso)
  make $1 2>&1 | sed -ue "s/\(instantiated from\)/$(tput setaf
2)\1$(tput sgr0)/" \
    | sed -ue "s/^\([a-zA-Z_-.0-9/]*\/\)\([a-zA-Z_-.0-9]*:[0-9]*\)/\1$(tput
setaf 2)\2$(tput sgr0)/" \
    | sed -ue "s/^\(.*error.*\)$/$(tput setaf 1)\1$(tput sgr0)/" \
    | sed -ue "s/error/${tbld}$(tput setaf 1)error$(tput sgr0)$(tput setaf 1)/"
  return ${PIPESTATUS[0]}
}
