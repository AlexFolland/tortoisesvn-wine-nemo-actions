#!/bin/bash

IFS=$'\n'
svnpaths=''
for svnpath in ${@:2} ; do
	#echo "arg = $svnpath"
	svnpaths+="Z:$svnpath*"
done
IFS=$' '
svnpaths=`perl -pe 's/\//\\\\\\\\/g' <<< $svnpaths`
#echo "svnpaths = $svnpaths"
svnpaths=`perl -pe "s/^(.*)\*$/\\$1/g" <<< $svnpaths`
#echo "svnpaths = $svnpaths"
#svnpaths=`perl -MURI::Escape -e 'print uri_escape($ARGV[0]);' "$svnpaths"`
#svnpaths=`perl -pe "s/ /\\\\\\\\ /g" <<< $svnpaths`
#echo "svnpaths = $svnpaths"
#echo "running this:"
bashcommand="wine TortoiseProc \"/command:$1\" \"/path:\"${svnpaths}\"\" &> /dev/null"
bash -v -c "$bashcommand"
exit 0