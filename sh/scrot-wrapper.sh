#!/bin/sh
# dmenu wrapper for scrot
#
# eg.
# bindsym $mod+Shift+s exec "/bin/sh scrotwrapper" in ~/.config/i3/config
#
scrot -s $(zenity --file-selection --save)-$(date +%y%m%d).png
