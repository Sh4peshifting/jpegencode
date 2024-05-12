#!/bin/bash

./env_prep.sh

cd DC

./clean.sh

./run_dc_read_rtl.sh

./run_dc_constraint_compile.sh
