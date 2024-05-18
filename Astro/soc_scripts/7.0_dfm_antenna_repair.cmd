;# Scheme
geOpenLib
formDefault "Open Library"
setFormField "Open Library" "Library Name" "design_lib_aes_ASIC"
formOK "Open Library"

geOpenCell
formDefault "Open Cell"
setFormField "Open Cell" "Cell Name" "63_design_route_repair"
formOK "Open Cell"

;# dxzhang: 20100819, no rules, (tcl "axReportAntennaRatio [geGetEditCell]")

load_scheme "soc_scripts/antenna_rules.cmd"

;#dxzhang:20100819,should report Antenna after antenna_rules loaded
(tcl "axReportAntennaRatio [geGetEditCell]")


axgSetHPORouteOptions
formDefault "HPO Signal Route Options"
setFormField "HPO Signal Route Options" "Charge-Collecting Antenna" "advanced"
formOK "HPO Signal Route Options"

axgSearchRepair
formDefault "Search & Repair"
setFormField "Search & Repair" "Search & Repair Loop" "20"
setFormField "Search & Repair" "rerun DRC" "1"
formOK "Search & Repair"

;#(tcl "axReportAntennaRatio [geGetEditCell]")

;#insert diode
;#axgInsertDiode
;#formDefault "Insert Diode for Antenna Violation"
;#formOK "Insert Diode for Antenna Violation"

;#(tcl "axReportAntennaRatio [geGetEditCell]")

;#axgSearchRepair
;#formDefault "Search & Repair"
;#setFormField "Search & Repair" "Search & Repair Loop" "5"
;#setFormField "Search & Repair" "rerun DRC" "1"
;#formOK "Search & Repair"

(tcl "axReportAntennaRatio [geGetEditCell]")

axgSetHPORouteOptions
formDefault "HPO Signal Route Options"
formOK "HPO Signal Route Options"

geSaveAs
formDefault "Save As"
setFormField "Save As" "Cell Name" "70_design_dfm_antenna_repair"
setFormField "Save As" "overwrite" "1"
formOK "Save As"

menuQuit
formYes "Dialog Box"
formButton "Save Cells" "discardAll"
formOK "Save Cells"
