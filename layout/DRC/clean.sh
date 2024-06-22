#/bin/bash
for  i in `ls |grep -v clean.sh |grep -v "^_SmicDR7T*"  |grep -v ".gitignore"|grep -v "run_drc"`
do
        rm -rf $i
done

rm -rf *SmicDR7T*
rm -rf .cgidrc*
