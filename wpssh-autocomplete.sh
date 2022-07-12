#!/usr/bin/env bash

# @see https://askubuntu.com/a/345150/208343

function _autocomplete_wpssh {
  ALIAS_LIST=$(wp cli alias list | sed -n 's#^\(@[a-zA-Z0-9\.-]*\):.*#\1#p')
  CURRENT="${COMP_WORDS[COMP_CWORD]}"

  if [[ ${CURRENT} == -* ]]; then
    FLAG_OPTS="--help --verbose --version"
    COMPREPLY=($(compgen -W "${FLAG_OPTS}" -- ${CURRENT}))
    return 0
  fi

  COMPREPLY=($(compgen -W "${ALIAS_LIST}" -- "${CURRENT}"))
  return 0
}
complete -F _autocomplete_wpssh wpssh
