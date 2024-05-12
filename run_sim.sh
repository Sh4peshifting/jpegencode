#!/bin/bash

./env_prep.sh

cd jpeg_encode_core/sim

vsim -do jpeg_sim.do
