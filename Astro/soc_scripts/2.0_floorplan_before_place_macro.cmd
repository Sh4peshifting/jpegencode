;# Scheme
geOpenLib
formDefault "Open Library"
setFormField "Open Library" "Library Name" "design_lib_jpeg_asic"
formOK "Open Library"
geOpenCell
formDefault "Open Cell"
setFormField "Open Cell" "Cell Name" "10_design_setup"
formOK "Open Cell"

axgLoadTDF
formDefault "Load TDF File"
setFormField "Load TDF File" "TDF File Name" "jpeg_asic.tdf"
setFormField "Load TDF File" "Cell Name" "10_design_setup"
formOK "Load TDF File"

axgPlanner
formDefault "Floor Planning"
setFormField "Floor Planning" "Control Parameter" "width & height"
setFormField "Floor Planning" "Row/Core Ratio" "0.75"

;# ( 23*74 + 184*2 ) - 80*2 - 184*2 = 1542
setFormField "Floor Planning" "Core Width" "5000"
setFormField "Floor Planning" "Core Height" "5000"
setFormField "Floor Planning" "Core To Left" "80"
setFormField "Floor Planning" "Core To Bottom" "80"
setFormField "Floor Planning" "Core To Right" "80"
setFormField "Floor Planning" "Core To Top" "80"
setFormField "Floor Planning" "Double Back" "1"
setFormField "Floor Planning" "Start from first row" "1"
setFormField "Floor Planning" "Flip first row" "1"
formOK "Floor Planning"

axgAddPadFiller
formDefault "Add Pad Filler"
setFormField "Add Pad Filler" "Filler" "PLFILLER75,PLFILLER30,PLFILLER20,PLFILLER10,PLFILLER5,PLFILLER1,PLFILLER01,PLFILLER001,PLFILLER0005"
formOK "Add Pad Filler"

aprPGConnect
formDefault "Connect/Disconnect PG"
setFormField "Connect/Disconnect PG" "Net Name" "VDD"
setFormField "Connect/Disconnect PG" "Port Pattern" "VDD"
setFormField "Connect/Disconnect PG" "is 1'b1/1'b0" "1"
setToggleField "Connect/Disconnect PG" "Cell Types" "Pad" 1
setToggleField "Connect/Disconnect PG" "Net SubType" "Pad" 1
formApply "Connect/Disconnect PG"
setFormField "Connect/Disconnect PG" "Net Name" "GND"
setFormField "Connect/Disconnect PG" "Port Pattern" "GND"
setFormField "Connect/Disconnect PG" "Net Type" "Ground"
setFormField "Connect/Disconnect PG" "Update Tie Up/Down" "1"
formOK "Connect/Disconnect PG"


axgCreatePadRings
formDefault "Create Pad Rings"
setFormField "Create Pad Rings" "Nets" "PG"
formOK "Create Pad Rings"


axgCreateRectangularRings
formDefault "Create Rectangular Rings"
setFormField "Create Rectangular Rings" "Net Name(s)" "VDD,VDD,GND,GND"
setFormField "Create Rectangular Rings" "L-Width" "18"
setFormField "Create Rectangular Rings" "L-Layer" "66"
setFormField "Create Rectangular Rings" "R-Width" "18"
setFormField "Create Rectangular Rings" "R-Layer" "66"
setFormField "Create Rectangular Rings" "B-Width" "18"
setFormField "Create Rectangular Rings" "B-Layer" "65"
setFormField "Create Rectangular Rings" "T-Width" "18"
setFormField "Create Rectangular Rings" "T-Layer" "65"
setFormField "Create Rectangular Rings" "Are" "Absolute"
setFormField "Create Rectangular Rings" "Left" "3"
setFormField "Create Rectangular Rings" "Right" "3"
setFormField "Create Rectangular Rings" "Bottom" "3"
setFormField "Create Rectangular Rings" "Top" "3"
formOK "Create Rectangular Rings"

;#dxzhang: should connect power pads and power ring here,otherwise,
;#maybe they can't be connected due to power strap.
;axgPrerouteInstances
;formDefault "Preroute Instances"
;setToggleField "Preroute Instances" "Instance Type(s)" "Macro" 0
;setToggleField "Preroute Instances" "Instance Type(s)" "Cover" 0
;formApply "Preroute Instances"
;formCancel "Preroute Instances"

load "soc_scripts/preroutepadpg.cmd"

;axgVeriPGConn
;setFormField "Verify P/G Connectivity" "Std Cell Pin Connect" "ignore"
;setFormField "Verify P/G Connectivity" "Macro Pin Connect" "ignore"
;formOK "Verify P/G Connectivity"


geSaveAs
formDefault "Save As"
setFormField "Save As" "Cell Name" "20_design_floorplan_before_place_macro"
setFormField "Save As" "overwrite" "1"
formOK "Save As"

menuQuit
formYes "Dialog Box"
formButton "Save Cells" "discardAll"
formOK "Save Cells"
