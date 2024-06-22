v2lvs -v jpeg_asic.lvs.vg -l smic18.v  -l smic18IO_line.v -s SMIC18IOLIB_L.cdl -s stdcells.cdl -o jpeg_asic.spi -s0 GND -s1 VDD

echo '.GLOBAL VDDH' >> jpeg_asic.spi
echo '.GLOBAL VSSH' >> jpeg_asic.spi


