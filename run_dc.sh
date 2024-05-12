#!/bin/bash

cd DC

./clean.sh

./run_dc_read_rtl.sh

./run_dc_constraint_compile.sh
