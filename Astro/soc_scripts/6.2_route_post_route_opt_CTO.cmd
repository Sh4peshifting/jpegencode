;# Scheme
geOpenLib
formDefault "Open Library"
setFormField "Open Library" "Library Name" "design_lib_aes_ASIC"
formOK "Open Library"

geOpenCell
formDefault "Open Cell"
setFormField "Open Cell" "Cell Name" "61_design_route_autoroute"
formOK "Open Cell"

;#dxzhang: 20100818, should timing setup again?
atTimingSetupHide 

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

;#

astPostRouteOpt "DR"
formDefault "Post Route Optimization"
setFormField "Post Route Optimization" "Optimization effort" "HIGH"
setFormField "Post Route Optimization" "Target Hold" "0.1000"
setFormField "Post Route Optimization" "Purge filler cells" "0"
formOK "Post Route Optimization"


;# dxzhang: 20100816 , need CTO ?

astPostRouteCTO
formDefault "Post Route Clock Tree Optimization"
formApply "Post Route Clock Tree Optimization"
formCancel "Post Route Clock Tree Optimization"

geSaveAs
formDefault "Save As"
setFormField "Save As" "Cell Name" "62_design_route_post_route_opt_CTO"
setFormField "Save As" "overwrite" "1"
formOK "Save As"

menuQuit
formYes "Dialog Box"
formButton "Save Cells" "discardAll"
formOK "Save Cells"
