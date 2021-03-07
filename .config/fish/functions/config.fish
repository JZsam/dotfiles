# Defined in - @ line 1
function config --wraps='bash -c /usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' --description 'alias config=bash -c /usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
  bash -c /usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME $argv;
end
