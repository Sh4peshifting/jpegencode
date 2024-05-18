;# Scheme
geOpenLib
formDefault "Open Library"
setFormField "Open Library" "Library Name" "design_lib_aes_ASIC"
formOK "Open Library"

geOpenCell
formDefault "Open Cell"
setFormField "Open Cell" "Cell Name" "50_design_placement_cts"
formOK "Open Cell"


;# dxzhang: 20100823,need PreRoute->Connect Ports to PG and PreRoute->Standard Cells, Tie again here?
aprPGConnect
formDefault "Connect/Disconnect PG"
setFormField "Connect/Disconnect PG" "Net Name" "VDD"
setFormField "Connect/Disconnect PG" "Port Pattern" "VDD"
setFormField "Connect/Disconnect PG" "is 1'b1/1'b0" "1"
setToggleField "Connect/Disconnect PG" "Cell Types" "Pad" 1
setToggleField "Connect/Disconnect PG" "Net SubType" "Pad" 1
setFormField "Connect/Disconnect PG" "Update Tie Up/Down" "1"
formApply "Connect/Disconnect PG"
setFormField "Connect/Disconnect PG" "Net Name" "GND"
setFormField "Connect/Disconnect PG" "Port Pattern" "GND"
setFormField "Connect/Disconnect PG" "Net Type" "Ground"
formOK "Connect/Disconnect PG"

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

;#check design route
axgCheckDesignForRoute
formDefault "Check Design For Route"
formOK "Check Design For Route"

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

axgRouteGroup
formDefault "Route Net Group"
setFormField "Route Net Group" "Net Name(s) From" "All clock nets"
formOK "Route Net Group"

geSaveAs
formDefault "Save As"
setFormField "Save As" "Cell Name" "60_design_route_clocks"
setFormField "Save As" "overwrite" "1"
formOK "Save As"

menuQuit
formYes "Dialog Box"
formButton "Save Cells" "discardAll"
formOK "Save Cells"
