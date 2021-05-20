#!/bin/bash

IFS=$'\n'
svnpaths="$(winepath --windows "${2}")"
for additionalsvnpath in ${@:3} ; do
	svnpaths+="*$(winepath --windows "${additionalsvnpath}")"
done
wine TortoiseProc.exe "/command:${1}" "/path:${svnpaths}" &> /dev/null

#set -x
#{ set +x; } 2> /dev/null
#svnpaths="$(perl -pe "s/(?<!:)\\\\/\\\\\\\\/g" <<< $svnpaths)"
#svnpaths="$(perl -pe "s/ /\\\\ /g" <<< $svnpaths)"
#command=$'TortoiseProc "/command:$1" "\"/path:${svnpaths}\"" &> /dev/null'
#exit 0

#function tort { local WPATH=`winepath --windows $2`; wine "TortoiseProc.exe" "/command:${1}" "/path:${WPATH}"; } export -f tort 