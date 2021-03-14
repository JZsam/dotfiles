!# /bin/bash

/home/jzdoot/Script/./closeOn10.sh
st -e unimatrix & sleep .4
i3-msg split h
st -e tty-clock -csC 3 & sleep .4
i3-msg focus parent
i3-msg split v
st -e ncmpcpp & sleep .4
i3-msg resize grow height 25 px or 25 ppt
i3-msg focus parent
i3-msg split h
st & sleep .4
i3-msg resize shrink width 20 px or 20 ppt
i3-msg split v
st -e ttrv & sleep .4
i3-msg split h
i3-msg focus left
i3-msg focus up
i3-msg resize shrink width 9 px or 9 ppt
i3-msg focus down
#-e $(neofetch && fish)
