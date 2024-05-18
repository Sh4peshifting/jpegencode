;# Scheme
geOpenLib
formDefault "Open Library"
setFormField "Open Library" "Library Name" "design_lib_aes_ASIC"
formOK "Open Library"

geOpenCell
formDefault "Open Cell"
setFormField "Open Cell" "Cell Name" "60_design_route_clocks"
formOK "Open Cell"

;#dxzhang:20100817,change Route Options?
axgSetRouteOptions
formDefault "Route Common Options"
setFormField "Route Common Options" "CrossTalk Prevention" "1"
setFormField "Route Common Options" "Timing Driven" "1"
setFormField "Route Common Options" "Skew Control" "1"
setFormField "Route Common Options" "Track Assign Timing Driven" "1"
setFormField "Route Common Options" "Detail Route Timing Driven" "1"
setFormField "Route Common Options" "Stack via less than min-area" "forbid"
setFormField "Route Common Options" "Same Net Notch" "check and fix"
formOK "Route Common Options"

;#dxzhang: 20100819,setup timing again
atTimingSetup
atTimingSetupGoto "Environment" 
atCmdSetField "Enable Preset/Clear Arcs" "0"
atCmdSetField "Ignore Interconnect" "0"
atCmdSetField "Enable Recovery/Removal Arcs" "0"
atCmdSetField "Enable Mixed Clock/Signal Edges" "1"
atCmdSetField "Enable Scan Enable" "0"
atCmdSetField "Include Library Max Tran" "1"
atCmdSetField "Include Library Max Cap" "1"
atCmdSetField "Enable Multi-Clocks Per Reg" "1"
atCmdSetField "Enable Data Check" "1"
atCmdSetEnvModel 

atTimingSetupGoto "Optimization" 
atCmdSetField "Optimization Target Hold Slack" "0.2"
atCmdSetField "Optimization Target Setup Slack" "0.2"
atCmdSetField "Optimization Max Transition" "1"
atCmdSetField "Optimization Max Capacitance" "1"
atCmdSetField "Optimization Target Utilization" "70"
atCmdSetOptModel 

atTimingSetupGoto "Library" 
atCmdSetField "Multi NLDM Library" "1"
atCmdSetLibModel 

atTimingSetupGoto "Parasitics" 
atCmdSetField "Parasitic Model Temperature Min" "0"
atCmdSetField "Parasitic Model Temperature Nom" "25"
atCmdSetField "Parasitic Model Temperature Max" "125"
atCmdSetParaModel 

atTimingSetupGoto "Model" 
atCmdSetField "Delay Model Cell Delay OpCond" "max min"
atCmdSetField "Delay Model Net Delay Model" "medium_effort"
atCmdSetModels 
atCmdLoadModels 

atTimingSetupHide 

axgAutoRoute
formDefault "Auto Route"
setFormField "Auto Route" "Search & Repair Loop" "20"
setToggleField "Auto Route" "Save After Phase" "global" 1
setToggleField "Auto Route" "Save After Phase" "track assign" 1
setToggleField "Auto Route" "Save After Phase" "detail" 1
formOK "Auto Route"

;#dxzhang:20100823,route_spreadwires
(tcl "route_spreadwires -setup_slack_threshold 0.1 -search_repair_loop 3")


geSaveAs
formDefault "Save As"
setFormField "Save As" "Cell Name" "61_design_route_autoroute"
setFormField "Save As" "overwrite" "1"
formOK "Save As"

menuQuit
formYes "Dialog Box"
formButton "Save Cells" "discardAll"
formOK "Save Cells"
