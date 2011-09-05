for f in $HOME/.aliasrc $HOME/.zsh/.aliasrc; do
  [[ -f $f ]] && . $f
done

[[ -n $PS1 ]] && . /etc/bashrc

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

eval "$(rbenv init -)" >/dev/null 2>&1

