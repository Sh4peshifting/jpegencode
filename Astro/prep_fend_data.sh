#!/bin/bash

TOP_MODULE=jpeg_top
cp ../DC/netlist/${TOP_MODULE}.vg ./data_fend
cp ../DC/netlist/${TOP_MODULE}.sdc ./data_fend
cp ../DC/netlist/${TOP_MODULE}.ddc ./data_fend

(cd data_fend; ./prep_sdc.sh ${TOP_MODULE}.sdc)

