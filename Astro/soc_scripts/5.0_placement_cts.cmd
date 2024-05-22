;# Scheme
geOpenLib
formDefault "Open Library"
setFormField "Open Library" "Library Name" "design_lib_jpeg_asic"
formOK "Open Library"

geOpenCell
formDefault "Open Cell"
setFormField "Open Cell" "Cell Name" "40_design_autoplaced"
formOK "Open Cell"


astReportClockTree
formDefault "Report Clock Tree"
setFormField "Report Clock Tree" "Clock Tree Overview" "1"
setFormField "Report Clock Tree" "User Defined Sync Pins" "1"
setFormField "Report Clock Tree" "Explicit Ignore Pins" "1"
setFormField "Report Clock Tree" "Implicit Ignore Pins" "1"
setFormField "Report Clock Tree" "Clock Domain Overlap" "1"
setFormField "Report Clock Tree" "File Name" "reports/clock_tree_before_CTS.rpt"
formOK "Report Clock Tree"

define ataDRCFixingAfterIgnorePin 1


astReportClockTree
formDefault "Report Clock Tree"
setFormField "Report Clock Tree" "Clock Tree Overview" "1"
setFormField "Report Clock Tree" "User Defined Sync Pins" "1"
setFormField "Report Clock Tree" "Explicit Ignore Pins" "1"
setFormField "Report Clock Tree" "Implicit Ignore Pins" "1"
setFormField "Report Clock Tree" "Clock Domain Overlap" "1"
setFormField "Report Clock Tree" "File Name" "reports/clock_tree_after_sync_pin_defined.rpt"
formOK "Report Clock Tree"

astClockOptions
formDefault "Clock Common Options"
setFormField "Clock Common Options" "Best" "1"
setFormField "Clock Common Options" "Synthesis Effort" "3"
setFormField "Clock Common Options" "Optimization Effort" "3"
formButton "Clock Common Options" "ConstraintSubForm"
setFormField "Clock Common Options" "Maximum Fanout" "20"
subFormHide "Clock Common Options" 3
formOK "Clock Common Options"

astMarkClockTree
formDefault "Mark Clock Tree"
setFormField "Mark Clock Tree" "Options" "Reset Dont Touch"
formApply "Mark Clock Tree"
setFormField "Mark Clock Tree" "Options" "Unfix"
setFormField "Mark Clock Tree" "Fixing Options" "Clock Tree Only"
formOK "Mark Clock Tree"


astCTS
formDefault "Clock Tree Synthesis"
setFormField "Clock Tree Synthesis" "Skew Type" "Useful"
setFormField "Clock Tree Synthesis" "Design Level" "Top"
setFormField "Clock Tree Synthesis" "Best" "1"
formOK "Clock Tree Synthesis"


;#post-cts place
astAutoPlace
formDefault "Auto Place"
setFormField "Auto Place" "Post Place Optimization" "0"
setFormField "Auto Place" "In Place Optimization" "0"
setFormField "Auto Place" "Pre Place Optimization" "0"
setFormField "Auto Place" "Post CTS Optimization" "1"
setFormField "Auto Place" "Fix Hold" "1"
setFormField "Auto Place" "Effort" "High"
formOK "Auto Place"

;#post-place CTO
astCTO
formDefault "Clock Tree Optimization"
formOK "Clock Tree Optimization"

;#report clock tree skew and timing
astSkewAnalysis
formDefault "Skew Analysis"
setFormField "Skew Analysis" "Operating Condition" "Worst"
setFormField "Skew Analysis" "Output To" "File"
setFormField "Skew Analysis" "File Name" "reports/clock_tree_skew_worst.rpt"
formOK "Skew Analysis"

astSkewAnalysis
formDefault "Skew Analysis"
setFormField "Skew Analysis" "Operating Condition" "Best"
setFormField "Skew Analysis" "Output To" "File"
setFormField "Skew Analysis" "File Name" "reports/clock_tree_skew_best.rpt"
formOK "Skew Analysis"

astClockTiming
formDefault "Clock Tree Timing Report"
setFormField "Clock Tree Timing Report" "File Name" "reports/clock_tree_timing_worst.rpt"
setFormField "Clock Tree Timing Report" "Report" "Transition Delay"
formApply "Clock Tree Timing Report"
setFormField "Clock Tree Timing Report" "File Name" "reports/clock_tree_timing_best.rpt"
setFormField "Clock Tree Timing Report" "Condition" "Best"
formOK "Clock Tree Timing Report"


;#enable propagated_clock
sdc "set_propagated_clock [all_clocks]"

atTimingSetup
atCmdSetField "Ignore Interconnect" "0"
atCmdSetField "Enable Recovery/Removal Arcs" "1"
atCmdSetField "Enable Preset/Clear Arcs" "1"
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
setFormField "Report Timing" "File Name" "reports/timing_post_placement_cts.rpt"
setFormField "Report Timing" "Report Max Trans" "1"
setFormField "Report Timing" "Report Max Cap" "1"
setFormField "Report Timing" "Report Min Trans" "0"
setFormField "Report Timing" "Report Min Cap" "1"
setFormField "Report Timing" "Report Min Trans" "1"
setFormField "Report Timing" "Report Clock Trans" "1"
setFormField "Report Timing" "Show Clock Path" "1"
formOK "Report Timing"

geSaveAs
formDefault "Save As"
setFormField "Save As" "Cell Name" "50_design_placement_cts"
setFormField "Save As" "overwrite" "1"
formOK "Save As"

menuQuit
formYes "Dialog Box"
formButton "Save Cells" "discardAll"
formOK "Save Cells"
