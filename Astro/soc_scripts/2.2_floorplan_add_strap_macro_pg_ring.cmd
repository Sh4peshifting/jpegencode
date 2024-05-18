;# Scheme
geOpenLib
formDefault "Open Library"
setFormField "Open Library" "Library Name" "design_lib_aes_ASIC"
formOK "Open Library"

geOpenCell
formDefault "Open Cell"
setFormField "Open Cell" "Cell Name" "21_design_floorplan_macro_placed"
formOK "Open Cell"

load "soc_scripts/createstrap.cmd"

;#dxzhang: nothing,now
;#load "soc_scripts/preroutemacropg.cmd"

geSaveAs
formDefault "Save As"
setFormField "Save As" "Cell Name" "22_design_floorplan_add_macro_pg_ring"
setFormField "Save As" "overwrite" "1"
formOK "Save As"

menuQuit
formYes "Dialog Box"
formButton "Save Cells" "discardAll"
formOK "Save Cells"
