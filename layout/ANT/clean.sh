#/bin/bash
for  i in `ls |grep -v clean.sh |grep -v ".gitignore"|grep -v "run_ant"`
do
        rm -rf $i
done
rm -rf .cgidrc*
