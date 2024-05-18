;# Scheme
geOpenLib
formDefault "Open Library"
setFormField "Open Library" "Library Name" "design_lib_aes_ASIC"
formOK "Open Library"

geOpenCell
formDefault "Open Cell"
setFormField "Open Cell" "Cell Name" "71_design_dfm_add_filler_and_pg"
formOK "Open Cell"


axDrouteOptimizeContact (geGetEditCell) '(
  ("via1" "via1" 2)
  ("via2" "via2" 2)
  ("via3" "via3" 2)
  ("via4" "via4" 2)
  ("via5" "via5" 2)
  )

;axgOptimizeContact
;formDefault "Optimize Contact"
;setFormField "Optimize Contact" "Xsize1" "2"
;setFormField "Optimize Contact" "Xsize2" "2"
;setFormField "Optimize Contact" "Xsize3" "2"
;setFormField "Optimize Contact" "Xsize4" "2"
;setFormField "Optimize Contact" "Xsize5" "2"
;setFormField "Optimize Contact" "Xsize6" "2"
;setFormField "Optimize Contact" "Xsize7" "2"
;setFormField "Optimize Contact" "Xsize8" "2"
;setFormField "Optimize Contact" "Xsize9" "2"
;setFormField "Optimize Contact" "Xsize10" "2"
;setFormField "Optimize Contact" "Xsize11" "2"
;setFormField "Optimize Contact" "Xsize12" "2"
;setFormField "Optimize Contact" "Xsize13" "2"
;setFormField "Optimize Contact" "Xsize14" "2"
;setFormField "Optimize Contact" "Xsize15" "2"
;setFormField "Optimize Contact" "Xsize16" "2"
;setFormField "Optimize Contact" "Xsize17" "2"
;setFormField "Optimize Contact" "Xsize18" "2"
;setFormField "Optimize Contact" "Xsize19" "2"
;setFormField "Optimize Contact" "Xsize20" "2"
;setFormField "Optimize Contact" "doubleCon" "1"
;setFormField "Optimize Contact" "Dont touch other nets" "1"
;setFormField "Optimize Contact" "From1" "via1"
;setFormField "Optimize Contact" "To1" "via1"
;setFormField "Optimize Contact" "From2" "via2"
;setFormField "Optimize Contact" "To2" "via2"
;setFormField "Optimize Contact" "From3" "via3"
;setFormField "Optimize Contact" "To3" "via3"
;setFormField "Optimize Contact" "From4" "via4"
;setFormField "Optimize Contact" "To4" "via4"
;setFormField "Optimize Contact" "From5" "via5"
;setFormField "Optimize Contact" "To5" "via5"
;formOK "Optimize Contact"

axgSearchRepair
formDefault "Search & Repair"
setFormField "Search & Repair" "Search & Repair Loop" "5"
setFormField "Search & Repair" "rerun DRC" "1"
formOK "Search & Repair"

geSaveAs
formDefault "Save As"
setFormField "Save As" "Cell Name" "72_design_dfm_opt_contacts"
setFormField "Save As" "overwrite" "1"
formOK "Save As"

menuQuit
formYes "Dialog Box"
formButton "Save Cells" "discardAll"
formOK "Save Cells"
