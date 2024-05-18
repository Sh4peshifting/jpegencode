#!/bin/bash
#dxzhang@ustc.edu,20100817

#SDF:  Astro sdf output
(cd data_bend; ./Modify_SDF_2_1.pl aes_ASIC_post_APR.Astro.sdf)

#using PT to calc sdf according spef file
(cd ../PT ; ./run_pt.sh)

#SDF : PT sdf output
(cd data_bend; ./Modify_SDF_2_1.pl aes_ASIC_post_APR.PT.sdf)
