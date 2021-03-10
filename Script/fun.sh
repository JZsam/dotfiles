!# /bin/bash
/home/jzdoot/Script/./closeOn10.sh
st -e ncmpcpp & sleep .3
i3-msg split v
st -e ttrv & sleep .3
i3-msg resize grow height 30 px or 30 ppt
i3-msg split h
