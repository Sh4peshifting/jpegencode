#!/bin/bash

./env_prep.sh

cd jpeg_encode_core/sim

./clean.sh

vsim -do jpeg_sim.do
