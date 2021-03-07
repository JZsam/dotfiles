# Defined in - @ line 1
function supro --wraps='sudo protonvpn' --description 'alias supro=sudo protonvpn'
  sudo protonvpn $argv;
end
