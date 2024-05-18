;# Scheme
geOpenLib
formDefault "Open Library"
setFormField "Open Library" "Library Name" "design_lib_aes_ASIC"
formOK "Open Library"

geOpenCell
formDefault "Open Cell"
setFormField "Open Cell" "Cell Name" "70_design_dfm_antenna_repair"
formOK "Open Cell"

axgAddFillerCell
formDefault "Add Filler Cell"
setFormField "Add Filler Cell" "between std cells only" "1"
setFormField "Add Filler Cell" "Connect to Power Net (optional)" "VDD"
setFormField "Add Filler Cell" "Connect to Ground Net (optional)" "GND"
setFormField "Add Filler Cell" "Master Cell Name(s)" "FILLER64HD,FILLER32HD,FILLER16HD,FILLER8HD,FILLER6HD,FILLER4HD,FILLER3HD,FILLER2HD,FILLER1HD"
formApply "Add Filler Cell"
formCancel "Add Filler Cell"

aprPGConnect
formDefault "Connect/Disconnect PG"
setFormField "Connect/Disconnect PG" "Net Name" "VDD"
setFormField "Connect/Disconnect PG" "Port Pattern" "VDD"
setFormField "Connect/Disconnect PG" "is 1'b1/1'b0" "1"
setFormField "Connect/Disconnect PG" "Update Tie Up/Down" "1"
formApply "Connect/Disconnect PG"
setFormField "Connect/Disconnect PG" "Net Name" "GND"
setFormField "Connect/Disconnect PG" "Port Pattern" "GND"
setFormField "Connect/Disconnect PG" "Net Type" "Ground"
formApply "Connect/Disconnect PG"
formCancel "Connect/Disconnect PG"

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
formApply "Preroute Standard Cells"
setFormField "Preroute Standard Cells" "Mode" "Tie"
formOK "Preroute Standard Cells"


geSaveAs
formDefault "Save As"
setFormField "Save As" "Cell Name" "71_design_dfm_add_filler_and_pg"
setFormField "Save As" "overwrite" "1"
formOK "Save As"

menuQuit
formYes "Dialog Box"
formButton "Save Cells" "discardAll"
formOK "Save Cells"
