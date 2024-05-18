;# Scheme
geOpenLib
formDefault "Open Library"
setFormField "Open Library" "Library Name" "design_lib_aes_ASIC"
formOK "Open Library"

geOpenCell
formDefault "Open Cell"
setFormField "Open Cell" "Cell Name" "23_design_floorplanned"
formOK "Open Cell"

ataLoadSDC
formDefault "Load SDC File"
setFormField "Load SDC File" "SDC File Name" "data_fend/aes_ASIC.sdc"
formOK "Load SDC File"

atTimingSetup
atCmdSetField "Ignore Interconnect" "1"
atCmdSetField "Ignore Propagated Clock" "1"
atCmdSetEnvModel 

atTimingSetupHide 

astTimingDataCheck
formDefault "TimingDataCheck"
setFormField "TimingDataCheck" "Output To" "File"
setFormField "TimingDataCheck" "File Name" "reports/timing_data_check.rpt"
formOK "TimingDataCheck"

astReportTiming
formDefault "Report Timing"
setFormField "Report Timing" "Output To" "File"
setFormField "Report Timing" "File Name" "reports/timing_preplace.rpt"
setFormField "Report Timing" "Report Max Trans" "1"
setFormField "Report Timing" "Report Max Cap" "1"
setFormField "Report Timing" "Report Clock Trans" "1"
setFormField "Report Timing" "Print Histogram" "1"
formOK "Report Timing"

geSaveAs
formDefault "Save As"
setFormField "Save As" "Cell Name" "30_design_timing_setup"
setFormField "Save As" "overwrite" "1"
formOK "Save As"

menuQuit
formYes "Dialog Box"
formButton "Save Cells" "discardAll"
formOK "Save Cells"
