#!/bin/bash
#echo "#############################################################"
#echo "## please use astro 2007.03-sp7; sp12 will exit when SlotWire"
#echo "##############################################################"


#define a function
MAX_RETRY_NUM=5

execute_prog_with_retry() {
exitcode=1
retry_num=0
while [ $exitcode -ne 0 ]
do
#your prog
echo $*
$*
exitcode=$?
#
if [ $exitcode -eq 0 ]
then 
	echo "$1 execute Successful"
	break
fi

retry_num=`expr $retry_num + 1`
if [ $retry_num -ne $MAX_RETRY_NUM ]
then
	echo "$1 execute failed, exit code = $exitcode"
	echo "try again , retry num: $retry_num"
#wait 1 second
	sleep 5
#
else
	echo "$1 execute failed and reach MAX retry num, script exiting......"
	exit 1
fi
	
done
}
#end 

echo "##############################################################"


date >> astro.log
echo "Astro Backend Script for aes_ASIC"
mkdir -p reports


echo "1.0_design_setup"
execute_prog_with_retry Astro -cmdd logs/1.0 -logd logs/1.0 -load ./soc_scripts/1.0_design_setup.cmd 
if [ `grep ERROR logs/1.0.log* | wc -l` != 0 ] ; then echo "ERROR Found , please check";exit; fi
date >> astro.log


echo "Press any key to continue --> 2.0_floorplan_before_place_macro"
#read x
execute_prog_with_retry Astro -cmdd logs/2.0 -logd logs/2.0 -load ./soc_scripts/2.0_floorplan_before_place_macro.cmd 
if [ `grep ERROR logs/2.0.log* | wc -l` != 0 ] ; then echo "ERROR Found , please check";exit; fi
date >> astro.log

echo "Press any key to continue --> 2.1_floorplan_place_macro.cmd"
#read x
execute_prog_with_retry Astro -cmdd logs/2.1 -logd logs/2.1 -load ./soc_scripts/2.1_floorplan_place_macro.cmd 
if [ `grep ERROR logs/2.1.log* | wc -l` != 0 ] ; then echo "ERROR Found , please check"; exit;fi
date >> astro.log


echo "Press any key to continue --> 2.2_floorplan_add_strap_macro_pg_ring.cmd"
#read x
execute_prog_with_retry Astro -cmdd logs/2.2 -logd logs/2.2 -load ./soc_scripts/2.2_floorplan_add_strap_macro_pg_ring.cmd 
if [ `grep ERROR logs/2.2.log* | wc -l` != 0 ] ; then echo "ERROR Found , please check"; exit; fi
date >> astro.log


echo "Press any key to continue --> 2.3_floorplan_add_blockage.cmd"
#read x
execute_prog_with_retry Astro -cmdd logs/2.3 -logd logs/2.3 -load ./soc_scripts/2.3_floorplan_add_blockage.cmd
if [ `grep ERROR logs/2.3.log* | wc -l` != 0 ] ; then echo "ERROR Found , please check"; exit; fi
date >> astro.log


echo "Press any key to continue --> 3_timing_setup_check.cmd"
#read x
execute_prog_with_retry Astro -cmdd logs/3.0 -logd logs/3.0 -load ./soc_scripts/3.0_timing_setup_check.cmd 
if [ `grep ERROR logs/3.0.log* | wc -l` != 0 ] ; then echo "ERROR Found , please check"; exit; fi
date >> astro.log


echo "Press any key to continue --> 4.0_auotplace.cmd"
#read x
execute_prog_with_retry Astro -cmdd logs/4.0 -logd logs/4.0 -load ./soc_scripts/4.0_auotplace.cmd 
if [ `grep ERROR logs/4.0.log* | wc -l` != 0 ] ; then echo "ERROR Found , please check"; exit; fi
date >> astro.log


echo "Press any key to continue --> 5.0_placement_cts.cmd"
#read x
execute_prog_with_retry Astro -cmdd logs/5.0 -logd logs/5.0 -load ./soc_scripts/5.0_placement_cts.cmd 
if [ `grep ERROR logs/5.0.log* | wc -l` != 0 ] ; then echo "ERROR Found , please check";exit; fi
date >> astro.log


echo "Press any key to continue --> 6.0_route_clocks.cmd"
#read x
execute_prog_with_retry Astro -cmdd logs/6.0 -logd logs/6.0 -load ./soc_scripts/6.0_route_clocks.cmd 
if [ `grep ERROR logs/6.0.log* | wc -l` != 0 ] ; then echo "ERROR Found , please check"; exit; fi
date >> astro.log

echo "Press any key to continue --> 6.1_route_autoroute.cmd"
#read x
execute_prog_with_retry Astro -cmdd logs/6.1 -logd logs/6.1 -load ./soc_scripts/6.1_route_autoroute.cmd 
if [ `grep ERROR logs/6.1.log* | wc -l` != 0 ] ; then echo "ERROR Found , please check"; exit;fi
date >> astro.log


echo "Press any key to continue --> 6.2_route_post_route_opt_CTO.cmd"
#read x
execute_prog_with_retry Astro -cmdd logs/6.2 -logd logs/6.2 -load ./soc_scripts/6.2_route_post_route_opt_CTO.cmd
if [ `grep ERROR logs/6.2.log* | wc -l` != 0 ] ; then echo "ERROR Found , please check"; exit;fi
date >> astro.log


echo "Press any key to continue --> 6.3_route_repair.cmd"
#read x
execute_prog_with_retry Astro -cmdd logs/6.3 -logd logs/6.3 -load ./soc_scripts/6.3_route_repair.cmd 
if [ `grep ERROR logs/6.3.log* | wc -l` != 0 ] ; then echo "ERROR Found , please check";exit; fi
date >> astro.log

#echo "Press any key to continue --> 6.4_route_DRC_LVS.cmd"
#read x
#execute_prog_with_retry Astro -cmdd logs/6.4 -logd logs/6.4 -load ./soc_scripts/6.4_route_DRC_LVS.cmd 
#if [ `grep ERROR logs/6.4.log* | wc -l` != 0 ] ; then echo "ERROR Found , please check";exit; fi
#date >> astro.log

echo "Press any key to continue --> 7.0_dfm_antenna_repair.cmd"
#read x
execute_prog_with_retry Astro -cmdd logs/7.0 -logd logs/7.0 -load ./soc_scripts/7.0_dfm_antenna_repair.cmd 
if [ `grep ERROR logs/7.0.log* | wc -l` != 0 ] ; then echo "ERROR Found , please check"; exit;fi
date >> astro.log


echo "Press any key to continue --> 7.1_dfm_add_filler_and_pg.cmd"
#read x
execute_prog_with_retry Astro -cmdd logs/7.1 -logd logs/7.1 -load ./soc_scripts/7.1_dfm_add_filler_and_pg.cmd 
if [ `grep ERROR logs/7.1.log* | wc -l` != 0 ] ; then echo "ERROR Found , please check"; exit;fi
date >> astro.log


echo "Press any key to continue --> 7.2_dfm_opt_contacts.cmd"
#read x
execute_prog_with_retry Astro -cmdd logs/7.2 -logd logs/7.2 -load ./soc_scripts/7.2_dfm_opt_contacts.cmd 
if [ `grep ERROR logs/7.2.log* | wc -l` != 0 ] ; then echo "ERROR Found , please check"; exit;fi
date >> astro.log


#echo "Press any key to continue --> 7.3_dfm_slot_wire.cmd"
#read x
#execute_prog_with_retry Astro -cmdd logs/7.3 -logd logs/7.3 -load ./soc_scripts/7.3_dfm_slot_wire.cmd
#if [ `grep ERROR logs/7.3.log* | wc -l` != 0 ] ; then echo "ERROR Found , please check"; exit;fi
#date >> astro.log

echo "Press any key to continue --> 7.4_dfm_fill_ng_add_label_fill_wire_track.cmd"
#read x
execute_prog_with_retry Astro -cmdd logs/7.4 -logd logs/7.4 -load ./soc_scripts/7.4_dfm_fill_ng_add_label_fill_wire_track.cmd
if [ `grep ERROR logs/7.4.log* | wc -l` != 0 ] ; then echo "ERROR Found , please check"; exit;fi
date >> astro.log

#echo "Press any key to continue --> 8.0_DRC_LVS.cmd"
#read x
#execute_prog_with_retry Astro -cmdd logs/8.0  -logd logs/8.0  -load ./soc_scripts/8.0_DRC_LVS.cmd
#if [ `grep ERROR logs/8.0.log* | wc -l` != 0 ] ; then echo "ERROR Found , please check"; exit;fi
#date >> astro.log

echo "Press any key to continue --> 9.0_output.cmd"
#read x
execute_prog_with_retry Astro -cmdd logs/9.0  -logd logs/9.0  -load ./soc_scripts/9.0_output.cmd
if [ `grep ERROR logs/9.0.log* | wc -l` != 0 ] ; then echo "ERROR Found , please check"; exit;fi
date >> astro.log

echo "aes_ASIC backend scripts finished, check logs and reports directory"
 
date >> astro.log
