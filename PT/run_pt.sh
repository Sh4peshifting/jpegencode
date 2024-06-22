#!/bin/bash
mkdir -p logs
mkdir -p reports
pt_shell -f jpeg_asic.pt 	|tee -i logs/jpeg_asic.pt.log
