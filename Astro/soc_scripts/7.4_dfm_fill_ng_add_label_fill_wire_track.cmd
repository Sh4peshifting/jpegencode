;# Scheme
geOpenLib
formDefault "Open Library"
setFormField "Open Library" "Library Name" "design_lib_aes_ASIC"
formOK "Open Library"

geOpenCell
formDefault "Open Cell"
;#setFormField "Open Cell" "Cell Name" "71_design_dfm_add_filler_and_pg"
setFormField "Open Cell" "Cell Name" "72_design_dfm_opt_contacts"
;#setFormField "Open Cell" "Cell Name" "73_design_dfm_slot_wire"
formOK "Open Cell"

geNewFillNG
formDefault "New Fill Notch and Gap"
formOK "New Fill Notch and Gap"

axgSearchRepair
formDefault "Search & Repair"
setFormField "Search & Repair" "Search & Repair Loop" "40"
setFormField "Search & Repair" "rerun DRC" "1"
formOK "Search & Repair"

load_scheme "soc_scripts/add_label.cmd"

;##Fill metal wire tracks
;##before this step please use the virturso to find the layer
;##whose mental density is not enough

axgFillWireTrack

formDefault "Fill Wire Track"
setFormField "Fill Wire Track" "Output to" "self"
setFormField "Fill Wire Track" "Spacing to routing" "1.0"
setFormField "Fill Wire Track" "Tie to net" "specify"
setFormField "Fill Wire Track" "Net Name" "GND"
setFormField "Fill Wire Track" "From Metal" "1"
setFormField "Fill Wire Track" "To Metal" "1"
formApply "Fill Wire Track"

formDefault "Fill Wire Track"
setFormField "Fill Wire Track" "Output to" "self"
setFormField "Fill Wire Track" "Spacing to routing" "1.0"
setFormField "Fill Wire Track" "Tie to net" "specify"
setFormField "Fill Wire Track" "Net Name" "GND"
setFormField "Fill Wire Track" "From Metal" "2"
setFormField "Fill Wire Track" "To Metal" "2"
formApply "Fill Wire Track"

formCancel "Fill Wire Track"


axgSearchRepair
setFormField "Search & Repair" "Search & Repair Loop" "10"
setFormField "Search & Repair" "rerun DRC" "1"
formOK "Search & Repair"


atTimingSetup
atCmdSetField "Ignore Interconnect" "0"
atCmdSetField "Enable Recovery/Removal Arcs" "1"
atCmdSetField "Enable Preset/Clear Arcs" "0"
atCmdSetField "Enable Mixed Clock/Signal Edges" "1"
atCmdSetField "Ignore Clock Uncertainty" "1"
atCmdSetField "Ignore Propagated Clock" "0"
atCmdSetField "Set IO Clock Latency" "0"
atCmdSetField "Enable Ideal Network Delay" "0"
atCmdSetField "Enable Gated Clock Checks" "1"
atCmdSetEnvModel 

atTimingSetupHide 

astReportTiming
formDefault "Report Timing"
setFormField "Report Timing" "Output To" "File"
setFormField "Report Timing" "File Name" "reports/timing_final.rpt"
setFormField "Report Timing" "Report Max Trans" "1"
setFormField "Report Timing" "Report Max Cap" "1"
setFormField "Report Timing" "Report Min Trans" "0"
setFormField "Report Timing" "Report Min Cap" "1"
setFormField "Report Timing" "Report Clock Trans" "1"
setFormField "Report Timing" "Show Clock Path" "1"
formOK "Report Timing"

geSaveAs
formDefault "Save As"
setFormField "Save As" "Cell Name" "74_design_dfm_fill_ng_add_label_fill_wire_track"
setFormField "Save As" "overwrite" "1"
formOK "Save As"

geSaveAs
formDefault "Save As"
setFormField "Save As" "Cell Name" "DFM_final"
setFormField "Save As" "overwrite" "1"
formOK "Save As"

menuQuit
formYes "Dialog Box"
formButton "Save Cells" "discardAll"
formOK "Save Cells"
