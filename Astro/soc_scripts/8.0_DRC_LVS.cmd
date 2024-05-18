;# Scheme
geOpenLib
formDefault "Open Library"
setFormField "Open Library" "Library Name" "design_lib_aes_ASIC"
formOK "Open Library"

geOpenCell
formDefault "Open Cell"
setFormField "Open Cell" "Cell Name" "74_design_dfm_fill_ng_add_label_fill_wire_track"
formOK "Open Cell"

;#geNewDRC
;#formDefault "DRC"
;#setFormField "DRC" "List Error Summary Immediately" "1"
;#formOK "DRC"

geNewLVS
formDefault "NEWLVS"
;#dxzhang:20100830,need not check minimum area
setToggleField "NEWLVS" "Check" "Minimum Area" 0

setFormField "NEWLVS" "List Error Summary Immediately" "1"
formOK "NEWLVS"

;#geAdvDRC
;#setFormField "Advanced DRC" "Via Size" "1"
;#formOK "Advanced DRC"



geErrorBrowser
;formButton "Error Browser" "Load"
;formOK "Error Browser"


;menuQuit
;formYes "Dialog Box"
;formButton "Save Cells" "discardAll"
;formOK "Save Cells"
