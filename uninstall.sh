#!/bin/sh

PLUGIN_FOLDER=~/.gnome2/gedit/plugins
ICON_FOLDER=~/.icons

uninstall_file() {
	if [ -f $PLUGIN_FOLDER/$1 ]; then
		echo " - removing $PLUGIN_FOLDER/$1"
		rm $PLUGIN_FOLDER/$1 || exit 1
	fi
}

uninstall_icon() {
	if [ -f $ICON_FOLDER/$1 ]; then
		echo " - removing $ICON_FOLDER/$1"
		rm $ICON_FOLDER/$1 || exit 1
	fi 
}

echo "\nUninstalling plugin"
uninstall_file 'pair_char_completion.gedit-plugin'
uninstall_file 'pair_char_completion.py'
uninstall_file 'pair_char_completion.pyc'
uninstall_icon 'pair_char_completion.png'

