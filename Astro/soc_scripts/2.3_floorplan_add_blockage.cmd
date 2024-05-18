;# Scheme
geOpenLib
formDefault "Open Library"
setFormField "Open Library" "Library Name" "design_lib_aes_ASIC"
formOK "Open Library"
geOpenCell
formDefault "Open Cell"
setFormField "Open Cell" "Cell Name" "22_design_floorplan_add_macro_pg_ring"
formOK "Open Cell"

;#load "soc_scripts/blockage.dump"
load "soc_scripts/row.dump"


axgPrerouteStandardCells
formDefault "Preroute Standard Cells"
setFormField "Preroute Standard Cells" "Mode" "Rail"
setFormField "Preroute Standard Cells" "Do Not Route Outside Working Area" 1
setToggleField "Preroute Standard Cells" "Do Not Connect" "Macro Pins" 0
setToggleField "Preroute Standard Cells" "Do Not Connect" "Pad Pins" 0
setFormField "Preroute Standard Cells" "Keep Floating Pieces" 1
setFormField "Preroute Standard Cells" "Optimize Via Locations" 1
setFormField "Preroute Standard Cells" "Do Not Route Over Macros" 0
setFormField "Preroute Standard Cells" "Fill All Empty Rows" 1
setFormField "Preroute Standard Cells" "Extend for Multiple Connections" "1"
setFormField "Preroute Standard Cells" "For Gap <" "2"
formOK "Preroute Standard Cells"


geSaveAs
formDefault "Save As"
setFormField "Save As" "Cell Name" "23_design_floorplanned"
setFormField "Save As" "overwrite" "1"
formOK "Save As"

menuQuit
formYes "Dialog Box"
formButton "Save Cells" "discardAll"
formOK "Save Cells"
