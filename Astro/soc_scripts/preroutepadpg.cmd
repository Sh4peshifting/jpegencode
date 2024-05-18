;# To make the associate core power pad to attached with the proper layer

;# 08/19/2010 (If the aes_ASIC.tdf file changed this file will be update )

;# Undefined --> The pads'pin should attached with higher layer or lower layer ?


;# Top and Bottom --> VSSC
axgPrerouteInstances
formDefault "Preroute Instances"
setToggleField "Preroute Instances" "Instance Type(s)" "Macro" 0
setToggleField "Preroute Instances" "Instance Type(s)" "Cover" 0
setFormField "Preroute Instances" "Instances" "Specified"
setFormField "Preroute Instances" "Instance Name(s)" "pad_L_VSSC1,pad_L_VSSC3"
setFormField "Preroute Instances" "Nets" "PG"
setFormField "Preroute Instances" "Route Pins" "Only Those on"
setFormField "Preroute Instances" "Pin Layer" "65"
setFormField "Preroute Instances" "Primary Routing Layer" "Specified"
setFormField "Preroute Instances" "Vertical Layer" "65"
setFormField "Preroute Instances" "Extend for Multiple Connections" "1"
setFormField "Preroute Instances" "For Gap <" "2"
formApply "Preroute Instances"

;# Top and Bottom --> VDDC
formDefault "Preroute Instances"
setToggleField "Preroute Instances" "Instance Type(s)" "Macro" 0
setToggleField "Preroute Instances" "Instance Type(s)" "Cover" 0
setFormField "Preroute Instances" "Instances" "Specified"
setFormField "Preroute Instances" "Instance Name(s)" "pad_L_VDDC1,pad_L_VDDC3"
setFormField "Preroute Instances" "Nets" "PG"
setFormField "Preroute Instances" "Route Pins" "Only Those on"
setFormField "Preroute Instances" "Pin Layer" "66"
setFormField "Preroute Instances" "Primary Routing Layer" "Specified"
setFormField "Preroute Instances" "Vertical Layer" "66"
setFormField "Preroute Instances" "Extend for Multiple Connections" "1"
setFormField "Preroute Instances" "For Gap <" "2"
formApply "Preroute Instances"

;# Left and Right --> VDDC
formDefault "Preroute Instances"
setToggleField "Preroute Instances" "Instance Type(s)" "Macro" 0
setToggleField "Preroute Instances" "Instance Type(s)" "Cover" 0
setFormField "Preroute Instances" "Instances" "Specified"
setFormField "Preroute Instances" "Instance Name(s)" "pad_L_VDDC2,pad_L_VDDC4"
setFormField "Preroute Instances" "Nets" "PG"
setFormField "Preroute Instances" "Route Pins" "Only Those on"
setFormField "Preroute Instances" "Pin Layer" "65"
setFormField "Preroute Instances" "Primary Routing Layer" "Specified"
setFormField "Preroute Instances" "Horizontal Layer" "65"
setFormField "Preroute Instances" "Extend for Multiple Connections" "1"
setFormField "Preroute Instances" "For Gap <" "2"
formApply "Preroute Instances"
;# Left and Right --> VSSC
formDefault "Preroute Instances"
setToggleField "Preroute Instances" "Instance Type(s)" "Macro" 0
setToggleField "Preroute Instances" "Instance Type(s)" "Cover" 0
setFormField "Preroute Instances" "Instances" "Specified"
setFormField "Preroute Instances" "Instance Name(s)" "pad_L_VSSC2,pad_L_VSSC4"
setFormField "Preroute Instances" "Nets" "PG"
setFormField "Preroute Instances" "Route Pins" "Only Those on"
setFormField "Preroute Instances" "Pin Layer" "66"
setFormField "Preroute Instances" "Primary Routing Layer" "Specified"
setFormField "Preroute Instances" "Horizontal Layer" "66"
setFormField "Preroute Instances" "Extend for Multiple Connections" "1"
setFormField "Preroute Instances" "For Gap <" "2"
formApply "Preroute Instances"

formCancel "Preroute Instances"
