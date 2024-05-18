;# Scheme
geOpenLib
formDefault "Open Library"
setFormField "Open Library" "Library Name" "design_lib_aes_ASIC"
formOK "Open Library"

astRepairHierPreservation
setFormField "Repair Hierarchy Information" "Flattened Cell Name(.CEL)" "DFM_final"
setFormField "Repair Hierarchy Information" "Delete all unconnected hier ports and nets" "1"
setFormField "Repair Hierarchy Information" "Delete hiconn nets connected to single module port" "1"
formOK "Repair Hierarchy Information"

geOpenCell
formDefault "Open Cell"
setFormField "Open Cell" "Cell Name" "DFM_final"
formOK "Open Cell"


;#
astDumpHierVerilog
;# fudan
formDefault "Dump Hierarchical Verilog"
setFormField "Dump Hierarchical Verilog" "Flattened Cell Name" "DFM_final"
setFormField "Dump Hierarchical Verilog" "Hierarcical Verilog File Name" "data_bend/aes_ASIC.lvs.vg"
setFormField "Dump Hierarchical Verilog" "No power/ground ports" "1"
setFormField "Dump Hierarchical Verilog" "No power/ground nets" "1"
setFormField "Dump Hierarchical Verilog" "Output bus as individual bits" "0"
setFormField "Dump Hierarchical Verilog" "No Corner Pad Cell instances" "1"
setFormField "Dump Hierarchical Verilog" "No Pad Filler Cell instances" "1"
setFormField "Dump Hierarchical Verilog" "No Core Filler Cell instances" "1"
setFormField "Dump Hierarchical Verilog" "No empty Cell Module Definitions" "1"
setFormField "Dump Hierarchical Verilog" "No Unconnected Cell instances" "0"
setFormField "Dump Hierarchical Verilog" "No Unconnected Ports" "1"
setFormField "Dump Hierarchical Verilog" "Strip BackSlash before hierarchy separator" "1"
setFormField "Dump Hierarchical Verilog" "Output Wire Declaration" "0"
setFormField "Dump Hierarchical Verilog" "Output 1'b1 for Power(VDD, vdd, ...) and 1'b0 for Ground(VSS,gnd, ...)" "1"
setFormField "Dump Hierarchical Verilog" "1'b1 Net Name" "VDD"
setFormField "Dump Hierarchical Verilog" "1'b0 Net Name" "GND"
;#formApply "Dump Hierarchical Verilog"
;# for post-APR simulation
;#formDefault "Dump Hierarchical Verilog"
;#setFormField "Dump Hierarchical Verilog" "Flattened Cell Name" "DFM_final"
;#setFormField "Dump Hierarchical Verilog" "Hierarcical Verilog File Name" "data_bend/aes_ASIC.hier.vg"
;#setFormField "Dump Hierarchical Verilog" "No power/ground ports" "1"
;#setFormField "Dump Hierarchical Verilog" "No power/ground nets" "0"
;#setFormField "Dump Hierarchical Verilog" "Output bus as individual bits" "0"
;#setFormField "Dump Hierarchical Verilog" "No empty Cell Module Definitions" "1"
;#setFormField "Dump Hierarchical Verilog" "No Corner Pad Cell instances" "1"
;#setFormField "Dump Hierarchical Verilog" "No Pad Filler Cell instances" "1"
;#setFormField "Dump Hierarchical Verilog" "No Core Filler Cell instances" "1"
;#setFormField "Dump Hierarchical Verilog" "No Unconnected Cell instances" "1"
;#setFormField "Dump Hierarchical Verilog" "No Unconnected Ports" "1"
;#setFormField "Dump Hierarchical Verilog" "Strip BackSlash before hierarchy separator" "1"
;#setFormField "Dump Hierarchical Verilog" "No diode ports" "1"
;#setFormField "Dump Hierarchical Verilog" "Output Wire Declaration" "1"
;#setFormField "Dump Hierarchical Verilog" "1'b1 Net Name" "VDD"
;#setFormField "Dump Hierarchical Verilog" "1'b0 Net Name" "GND"
formOK "Dump Hierarchical Verilog"


auStreamOut
formDefault "Stream Out Data File"
setFormField "Stream Out Data File" "Stream File Name" "data_bend/aes_ASIC.gds"
setFormField "Stream Out Data File" "Library Name" "design_lib_aes_ASIC"
setFormField "Stream Out Data File" "Convert" "Specified Cell"
setFormField "Stream Out Data File" "Cell Name" "DFM_final"
setToggleField "Stream Out Data File" "Fill" "Notch" 1
setToggleField "Stream Out Data File" "Fill" "Gap" 1
formButton "Stream Out Data File" "pinNetOptions"
setToggleField "Stream Out Data File" "Output Pins" "As Text" 1
setToggleField "Stream Out Data File" "Output Net" "As Text" 1
subFormHide "Stream Out Data File" 1
setToggleField "Stream Out Data File" "Flatten" "Devices" 1
setToggleField "Stream Out Data File" "Flatten" "Device Arrays" 1
formOK "Stream Out Data File"


menuReload "Astro"
astSPEFOut
formDefault "SPEF Out"
setFormField "SPEF Out" "Output file" "data_bend/aes_ASIC.spef"
formOK "SPEF Out"

ataDumpSDF
formDefault "SDF Write"
setFormField "SDF Write" "SDF Design Name" "aes_ASIC"
setFormField "SDF Write" "SDF CellType Name" "aes_ASIC"
setFormField "SDF Write" "SDF Instance Name" ""
setFormField "SDF Write" "File Name" "data_bend/aes_ASIC_post_APR.Astro.sdf"
formOK "SDF Write"

menuQuit
formYes "Dialog Box"
formButton "Save Cells" "discardAll"
formOK "Save Cells"
