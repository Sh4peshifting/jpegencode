;# Scheme
menuReload "astro_data_prep"
auVerilogToCell
formDefault "Verilog To Cell"
setFormField "Verilog To Cell" "Library Name" "design_lib_aes_ASIC"
setFormField "Verilog To Cell" "Verilog File Name" "./data_fend/aes_ASIC.vg"
setFormField "Verilog To Cell" "Output Cell Name" "aes_ASIC"
setFormField "Verilog To Cell" "Top Module Name" "aes_ASIC"
setFormField "Verilog To Cell" "Tech File Name" "../lib//SMIC18_Ver2.5/BEView_STDIO/TECH/smic18_apollo_m6.tf"
setFormField "Verilog To Cell" "Net Name for 1'b0" "GND"
setFormField "Verilog To Cell" "Open Library and Cell When Done" "1"
setFormField "Verilog To Cell" "Initialize Hierarchy Preservation" "1"
formButton "Verilog To Cell" "globalNetOptions"
setFormField "Verilog To Cell" "Net Name" "VDD"
setFormField "Verilog To Cell" "Port Pattern" "VDD"
formButton "Verilog To Cell" "apply"
setFormField "Verilog To Cell" "Net Name" "GND"
setFormField "Verilog To Cell" "Port Pattern" "GND"
formButton "Verilog To Cell" "apply"
subFormHide "Verilog To Cell" 1
formButton "Verilog To Cell" "refLibOptions"
setFormField "Verilog To Cell" "Reference Library" "mw_lib/SMIC18IOLIB_L_M6"
formButton "Verilog To Cell" "add"
setFormField "Verilog To Cell" "Reference Library" "mw_lib/SMIC18STDLIBM6"
formButton "Verilog To Cell" "add"
;#setFormField "Verilog To Cell" "Reference Library" "mw_lib/lib_vs_sp_64x24"
;#formButton "Verilog To Cell" "add"
subFormHide "Verilog To Cell" 2
formOK "Verilog To Cell"

astMarkHierAsPreserved
formDefault "Mark Module Instances As Preserved"
setFormField "Mark Module Instances As Preserved" "Flattened Cell Name" "aes_ASIC"
formOK "Mark Module Instances As Preserved"

geSaveAs
formDefault "Save As"
setFormField "Save As" "Cell Name" "10_design_setup"
setFormField "Save As" "overwrite" "1"
formOK "Save As"

menuQuit
formYes "Dialog Box"
formButton "Save Cells" "discardAll"
formOK "Save Cells"
