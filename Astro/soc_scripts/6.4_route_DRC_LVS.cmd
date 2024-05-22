;# Scheme
geOpenLib
formDefault "Open Library"
setFormField "Open Library" "Library Name" "design_lib_jpeg_asic"
formOK "Open Library"

geOpenCell
formDefault "Open Cell"
setFormField "Open Cell" "Cell Name" "63_design_route_repair"
formOK "Open Cell"

;#dxzhang:20100823,Do not do DRC check here
;#dxzhang: maybe we can do DRC check
geNewDRC
setFormField "DRC" "List Error Summary Immediately" "1"
formOK "DRC"

geNewLVS
setFormField "NEWLVS" "List Error Summary Immediately" "1"
formOK "NEWLVS"

;#geAdvDRC
;#setFormField "Advanced DRC" "Via Size" "1"
;#formOK "Advanced DRC"

geErrorBrowser
;#formButton "Error Browser" "Load"
;#formOK "Error Browser"

;#menuQuit
;#formYes "Dialog Box"
;#formButton "Save Cells" "discardAll"
;#formOK "Save Cells"
