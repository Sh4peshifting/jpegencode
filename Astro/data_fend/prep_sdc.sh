#!/bin/bash
#dxzhang@ustc.edu, 20100810
if [ $# != 1 ] ; then
	echo "Convert SDC file generated by DC to Astro format"
	echo "Note : The sdc file should be writed with 'write_sdc -nosplit ......'" 
	echo "Usage: $0 sdc_file_name"
	exit 0
fi

filename=`basename ${1%.sdc}`

cp ${filename}.sdc  ${filename}.sdc.dc

echo ":%s/^set_wire_load_model/#set_wire_load_model/g" > ${filename}.vimrc
echo ":%s/-dont_scale//g" >> ${filename}.vimrc
echo ":%s/^set_isolate_ports/#set_isolate_ports/g" >> ${filename}.vimrc
echo ":%s/^set_clock_latency/#set_clock_latency/g" >> ${filename}.vimrc

#dxzhang:20100816,Astro "Ignore Clock Uncertainty" can control this command;20100820,if clock uncertainty was defined, CTS will use this value
echo ":%s/^set_clock_uncertainty/#set_clock_uncertainty/g" >> ${filename}.vimrc

echo ":%s/^set_ideal_network/#set_ideal_network/g" >> ${filename}.vimrc
echo ":%s/^set_max_transition/#set_max_transition/g" >> ${filename}.vimrc
echo ":%s/^set_max_capacitance/#set_max_capacitance/g" >> ${filename}.vimrc

#dxzhang:20100816, set_units should not be commented out
#echo ":%s/^set_units/#set_units/g" >> ${filename}.vimrc

echo ":%s/^set_operating_conditions/#set_operating_conditions/g" >> ${filename}.vimrc
echo ":%s/^set_wire_load_mode/#set_wire_load_mode/g" >> ${filename}.vimrc
echo ":%s/^set_case_analysis/#set_case_analysis/g" >> ${filename}.vimrc

#dxzhang: 20100812,disable set_false_path?
#dxzhang: 20100821,should not disable set_false_path for rst signals
#echo ":%s/^set_false_path\ \ \ \-from\ \[list/#set_false_path\ \ \ \-from\ \[list/g" >> ${filename}.vimrc


echo ":w!" >> ${filename}.vimrc
vim -e -s ${filename}.sdc < ${filename}.vimrc

echo 'set_propagated_clock [all_clocks]' >> ${filename}.sdc


rm -f ${filename}.vimrc
