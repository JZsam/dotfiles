# Defined in - @ line 1
function sxb --wraps='sudo xbacklight' --description 'alias sxb=sudo xbacklight'
  sudo xbacklight $argv;
end
