# Defined in - @ line 1
function ls --wraps=la --wraps='ls -a' --description 'alias ls=ls -a'
 command ls -a $argv;
end
