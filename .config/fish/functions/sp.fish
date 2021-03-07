# Defined in - @ line 1
function sp --wraps='sudo pacman' --description 'alias sp=sudo pacman'
  sudo pacman $argv;
end
