#/bin/bash
for  i in `ls |grep -v clean.sh |grep -v  "aes_ASIC*" |grep -v "smic*" |grep -v "vs_*" |grep -v stdcell* | grep -v SMIC*|grep -v run_lvs|grep -v gen_spi.sh`
do
        rm -rf $i
done

rm -rf DFM_final.lvs.report*
rm -rf *SmicSP10R*
rm -rf *SmicSP11*
rm -rf v2lvs.log
rm -rf aes_ASIC.spi
rm -rf calibre.lvs.*
rm -rf .cgilvs*
rm -rf _smic18*
rm -rf __meta*
