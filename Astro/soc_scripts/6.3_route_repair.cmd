;# Scheme
geOpenLib
formDefault "Open Library"
setFormField "Open Library" "Library Name" "design_lib_aes_ASIC"
formOK "Open Library"

geOpenCell
formDefault "Open Cell"
setFormField "Open Cell" "Cell Name" "62_design_route_post_route_opt_CTO"
formOK "Open Cell"

axgSearchRepair
formDefault "Search & Repair"
setFormField "Search & Repair" "Search & Repair Loop" "20"
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
setFormField "Report Timing" "File Name" "reports/timing_post_route.rpt"
setFormField "Report Timing" "Report Max Trans" "1"
setFormField "Report Timing" "Report Max Cap" "1"
setFormField "Report Timing" "Report Min Trans" "0"
setFormField "Report Timing" "Report Min Cap" "1"
setFormField "Report Timing" "Report Clock Trans" "1"
setFormField "Report Timing" "Show Clock Path" "1"
formOK "Report Timing"


geSaveAs
formDefault "Save As"
setFormField "Save As" "Cell Name" "63_design_route_repair"
setFormField "Save As" "overwrite" "1"
formOK "Save As"

menuQuit
formYes "Dialog Box"
formButton "Save Cells" "discardAll"
formOK "Save Cells"
