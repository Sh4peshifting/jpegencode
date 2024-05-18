;# Scheme
geOpenLib
formDefault "Open Library"
setFormField "Open Library" "Library Name" "design_lib_aes_ASIC"
formOK "Open Library"

geOpenCell
formDefault "Open Cell"
formButton "Open Cell" "browse..."
setFormField "Open Cell" "Cell Name" "20_design_floorplan_before_place_macro"
formOK "Open Cell"


;# dxzhang: nothing now
;#load "soc_scripts/place_macro.dump"

geSaveAs
formDefault "Save As"
setFormField "Save As" "Cell Name" "21_design_floorplan_macro_placed"
setFormField "Save As" "overwrite" "1"
formOK "Save As"

menuQuit
formYes "Dialog Box"
formButton "Save Cells" "discardAll"
formOK "Save Cells"
