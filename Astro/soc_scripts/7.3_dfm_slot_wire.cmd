;# Scheme
geOpenLib
formDefault "Open Library"
setFormField "Open Library" "Library Name" "design_lib_jpeg_asic"
formOK "Open Library"

geOpenCell
formDefault "Open Cell"
setFormField "Open Cell" "Cell Name" "72_design_dfm_opt_contacts"
formOK "Open Cell"

;#dxzhang:20100820, how to set the following values?
;#dxzhang:20100823,reference CBDK_TSMC018 and UMC018 example
axgSlotWire
formDefault "Wire Slot"
setFormField "Wire Slot" "Net Name" "VDD,GND"
setFormField "Wire Slot" "CutLength0" "35"
setFormField "Wire Slot" "CutWidth 0" "35"
setFormField "Wire Slot" "Width 0" "1"
setFormField "Wire Slot" "Length 0" "10"
setFormField "Wire Slot" "SideSpace 0" "10"
setFormField "Wire Slot" "EndSpace 0" "10"
setFormField "Wire Slot" "SideClearance0" "10"
setFormField "Wire Slot" "EndClearance0" "10"
formOK "Wire Slot"

axgSearchRepair
formDefault "Search & Repair"
setFormField "Search & Repair" "Search & Repair Loop" "5"
setFormField "Search & Repair" "rerun DRC" "1"
formOK "Search & Repair"

geSaveAs
formDefault "Save As"
setFormField "Save As" "Cell Name" "73_design_dfm_slot_wire"
setFormField "Save As" "overwrite" "1"
formOK "Save As"

menuQuit
formYes "Dialog Box"
formButton "Save Cells" "discardAll"
formOK "Save Cells"
