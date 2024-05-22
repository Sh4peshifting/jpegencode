;# Scheme
geOpenLib
formDefault "Open Library"
setFormField "Open Library" "Library Name" "design_lib_jpeg_asic"
formOK "Open Library"

geOpenCell
formDefault "Open Cell"
setFormField "Open Cell" "Cell Name" "30_design_timing_setup"
formOK "Open Cell"

atTimingSetup
atTimingSetupGoto "Model" 

atCmdSetField "Delay Model Propagation Input Rise" "50.0"
atCmdSetField "Delay Model Propagation Output Rise" "10.0"
atCmdSetField "Delay Model Propagation Fall Start" "90.0"
atCmdSetField "Delay Model Net Delay Model" "low_effort"
atCmdSetModels 

atTimingSetupGoto "Parasitics" 

atCmdSetField "Parasitic Model Operating Conditions" "max min"
atCmdSetField "Parasitic Model Temperature Min" "0"
atCmdSetField "Parasitic Model Temperature Max" "125"
atCmdSetParaModel 

atTimingSetupGoto "Optimization" 

atCmdSetField "Optimization Target Setup Slack" "0.2"
atCmdSetField "Optimization Target Hold Slack" "0.2"
atCmdSetField "Optimization Max Transition" "1"
atCmdSetField "Optimization Max Capacitance" "1"
atCmdSetField "Optimization Target Utilization" "70"
atCmdSetField "Optimization High Fanout" "15"
atCmdSetOptModel 

atTimingSetupGoto "Environment" 

atCmdSetField "Enable Ideal Network Delay" "1"
atCmdSetField "Ignore Propagated Clock" "1"
atCmdSetField "Ignore Interconnect" "0"
atCmdSetEnvModel 

atTimingSetupHide 


astMagnetPlace
formDefault "AstroPlace - Magnet Placement"
setFormField "AstroPlace - Magnet Placement" "Ignore Soft Blockages" "1"
setFormField "AstroPlace - Magnet Placement" "Logical Level" "3"
formOK "AstroPlace - Magnet Placement"

astPlaceOptions
formDefault "AstroPlace Options"
setFormField "AstroPlace Options" "Timing Driven" "1"
formOK "AstroPlace Options"

astAutoPlace
formDefault "Auto Place"
setFormField "Auto Place" "Effort" "High"
setFormField "Auto Place" "Place Prevent Xtalk" "1"
formButton "Auto Place" "detailOption"
setFormField "Auto Place" "Use Global Route" "1"
setFormField "Auto Place" "Opt Prevent Xtalk" "1"
formOK "Auto Place"

geSaveAs
formDefault "Save As"
setFormField "Save As" "Cell Name" "40_design_autoplaced"
setFormField "Save As" "overwrite" "1"
formOK "Save As"

menuQuit
formYes "Dialog Box"
formButton "Save Cells" "discardAll"
formOK "Save Cells"
