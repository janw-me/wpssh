#!/usr/bin/env bash

function _autocomplete_wpssh {
  case "$COMP_CWORD" in
    1)
      ALIAS_LIST=$(wp cli alias list | sed -n 's#^\(@[a-zA-Z0-9\.-]*\):.*#\1#p')
      CURRENT="${COMP_WORDS[COMP_CWORD]}"

      COMPREPLY=($(compgen -W "${ALIAS_LIST}" -- "${CURRENT}"))
      ;;
    2)
      # Complete the first argument
      COMPREPLY=( $(compgen -W "--filezilla" -- "${COMP_WORDS[COMP_CWORD]}") )
      ;;
    *)
      COMPREPLY=()
      ;;
      # mostly leaving this as a hint for the future.
  esac
}
complete -F _autocomplete_wpssh wpssh
