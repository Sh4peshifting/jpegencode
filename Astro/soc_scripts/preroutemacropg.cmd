;# 08/19/2010

;# 08/22/2010 (Update for remove vga_lcd and its' ram module)

;# For ic_ram0-->vs_sp_2kx32_bw_or1200

axgPrerouteInstances
formDefault "Preroute Instances"
setToggleField "Preroute Instances" "Instance Type(s)" "Pad" 0
setToggleField "Preroute Instances" "Instance Type(s)" "Cover" 0
setFormField "Preroute Instances" "Instances" "Specified"
setFormField "Preroute Instances" "Instance Name(s)" "or1200_soc_top_inst/or1200_top_inst/or1200_ic_top/or1200_ic_ram/ic_ram0/vs_sp_2kx32_bw_or1200"
setToggleField "Preroute Instances" "Skip Side(s)" "Left" 0
setToggleField "Preroute Instances" "Skip Side(s)" "Right" 1
setToggleField "Preroute Instances" "Skip Side(s)" "Bottom" 1
setToggleField "Preroute Instances" "Skip Side(s)" "Top" 0
setFormField "Preroute Instances" "Extend for Multiple Connections" "1"
setFormField "Preroute Instances" "For Gap <" "2"
formApply "Preroute Instances"

;# For or1200_ic_tag --> ic_tag0 vs_sp_512x20_or1200
formDefault "Preroute Instances"
setToggleField "Preroute Instances" "Instance Type(s)" "Pad" 0
setToggleField "Preroute Instances" "Instance Type(s)" "Cover" 0
setFormField "Preroute Instances" "Instances" "Specified"
setFormField "Preroute Instances" "Instance Name(s)" "or1200_soc_top_inst/or1200_top_inst/or1200_ic_top/or1200_ic_tag/ic_tag0/vs_sp_512x20_or1200"
setToggleField "Preroute Instances" "Skip Side(s)" "Left" 0
setToggleField "Preroute Instances" "Skip Side(s)" "Right" 1
setToggleField "Preroute Instances" "Skip Side(s)" "Bottom" 1
setToggleField "Preroute Instances" "Skip Side(s)" "Top" 0
setFormField "Preroute Instances" "Extend for Multiple Connections" "1"
setFormField "Preroute Instances" "For Gap <" "2"
formApply "Preroute Instances"

;# For or1200_dmmu_top --> dtlb_tr_ram
formDefault "Preroute Instances"
setToggleField "Preroute Instances" "Instance Type(s)" "Pad" 0
setToggleField "Preroute Instances" "Instance Type(s)" "Cover" 0
setFormField "Preroute Instances" "Instances" "Specified"
setFormField "Preroute Instances" "Instance Name(s)" "or1200_soc_top_inst/or1200_top_inst/or1200_dmmu_top/or1200_dmmu_tlb/dtlb_tr_ram/vs_sp_64x24"
setToggleField "Preroute Instances" "Skip Side(s)" "Left" 1
setToggleField "Preroute Instances" "Skip Side(s)" "Right" 0
setToggleField "Preroute Instances" "Skip Side(s)" "Bottom" 1
setToggleField "Preroute Instances" "Skip Side(s)" "Top" 0
setFormField "Preroute Instances" "Extend for Multiple Connections" "1"
setFormField "Preroute Instances" "For Gap <" "2"
formApply "Preroute Instances"

;# For or1200_immu_top --> itlb_tr_ram
formDefault "Preroute Instances"
setToggleField "Preroute Instances" "Instance Type(s)" "Pad" 0
setToggleField "Preroute Instances" "Instance Type(s)" "Cover" 0
setFormField "Preroute Instances" "Instances" "Specified"
setFormField "Preroute Instances" "Instance Name(s)" "or1200_soc_top_inst/or1200_top_inst/or1200_immu_top/or1200_immu_tlb/itlb_tr_ram/vs_sp_64x22_or1200"
setToggleField "Preroute Instances" "Skip Side(s)" "Left" 0
setToggleField "Preroute Instances" "Skip Side(s)" "Right" 1
setToggleField "Preroute Instances" "Skip Side(s)" "Bottom" 1
setToggleField "Preroute Instances" "Skip Side(s)" "Top" 0
setFormField "Preroute Instances" "Extend for Multiple Connections" "1"
setFormField "Preroute Instances" "For Gap <" "2"
formApply "Preroute Instances"

;# For or1200_dmmu_top --> dtlb_mr_ram
formDefault "Preroute Instances"
setToggleField "Preroute Instances" "Instance Type(s)" "Pad" 0
setToggleField "Preroute Instances" "Instance Type(s)" "Cover" 0
setFormField "Preroute Instances" "Instances" "Specified"
setFormField "Preroute Instances" "Instance Name(s)" "or1200_soc_top_inst/or1200_top_inst/or1200_dmmu_top/or1200_dmmu_tlb/dtlb_mr_ram/vs_sp_64x14_or1200"
setToggleField "Preroute Instances" "Skip Side(s)" "Left" 1
setToggleField "Preroute Instances" "Skip Side(s)" "Right" 0
setToggleField "Preroute Instances" "Skip Side(s)" "Bottom" 1
setToggleField "Preroute Instances" "Skip Side(s)" "Top" 0
setFormField "Preroute Instances" "Extend for Multiple Connections" "1"
setFormField "Preroute Instances" "For Gap <" "2"
formApply "Preroute Instances"

;# For or1200_immu_top --> itlb_mr_ram
formDefault "Preroute Instances"
setToggleField "Preroute Instances" "Instance Type(s)" "Pad" 0
setToggleField "Preroute Instances" "Instance Type(s)" "Cover" 0
setFormField "Preroute Instances" "Instances" "Specified"
setFormField "Preroute Instances" "Instance Name(s)" "or1200_soc_top_inst/or1200_top_inst/or1200_immu_top/or1200_immu_tlb/itlb_mr_ram/vs_sp_64x14_or1200"
setToggleField "Preroute Instances" "Skip Side(s)" "Left" 1
setToggleField "Preroute Instances" "Skip Side(s)" "Right" 0
setToggleField "Preroute Instances" "Skip Side(s)" "Bottom" 1
setToggleField "Preroute Instances" "Skip Side(s)" "Top" 0
setFormField "Preroute Instances" "Extend for Multiple Connections" "1"
setFormField "Preroute Instances" "For Gap <" "2"
formApply "Preroute Instances"

;# For sdram0 --> cacheline2 : vs_dp_yadmc
formDefault "Preroute Instances"
setToggleField "Preroute Instances" "Instance Type(s)" "Pad" 0
setToggleField "Preroute Instances" "Instance Type(s)" "Cover" 0
setFormField "Preroute Instances" "Instances" "Specified"
setFormField "Preroute Instances" "Instance Name(s)" "or1200_soc_top_inst/sdram0/cacheline2/vs_dp_yadmc"
setToggleField "Preroute Instances" "Skip Side(s)" "Left" 1
setToggleField "Preroute Instances" "Skip Side(s)" "Right" 1
setToggleField "Preroute Instances" "Skip Side(s)" "Bottom" 0
setToggleField "Preroute Instances" "Skip Side(s)" "Top" 0
setFormField "Preroute Instances" "Extend for Multiple Connections" "1"
setFormField "Preroute Instances" "For Gap <" "2"
formApply "Preroute Instances"

;# For sdram0 --> cacheline0 : vs_dp_yadmc
formDefault "Preroute Instances"
setToggleField "Preroute Instances" "Instance Type(s)" "Pad" 0
setToggleField "Preroute Instances" "Instance Type(s)" "Cover" 0
setFormField "Preroute Instances" "Instances" "Specified"
setFormField "Preroute Instances" "Instance Name(s)" "or1200_soc_top_inst/sdram0/cacheline0/vs_dp_yadmc"
setToggleField "Preroute Instances" "Skip Side(s)" "Left" 1 
setToggleField "Preroute Instances" "Skip Side(s)" "Right" 1
setToggleField "Preroute Instances" "Skip Side(s)" "Bottom" 0
setToggleField "Preroute Instances" "Skip Side(s)" "Top" 0 
setFormField "Preroute Instances" "Extend for Multiple Connections" "1"
setFormField "Preroute Instances" "For Gap <" "2"
formApply "Preroute Instances"

;# For sdram0 --> cacheline1 : vs_dp_yadmc
formDefault "Preroute Instances"
setToggleField "Preroute Instances" "Instance Type(s)" "Pad" 0
setToggleField "Preroute Instances" "Instance Type(s)" "Cover" 0
setFormField "Preroute Instances" "Instances" "Specified"
setFormField "Preroute Instances" "Instance Name(s)" "or1200_soc_top_inst/sdram0/cacheline1/vs_dp_yadmc"
setToggleField "Preroute Instances" "Skip Side(s)" "Left" 1 
setToggleField "Preroute Instances" "Skip Side(s)" "Right" 1
setToggleField "Preroute Instances" "Skip Side(s)" "Bottom" 0
setToggleField "Preroute Instances" "Skip Side(s)" "Top" 0 
setFormField "Preroute Instances" "Extend for Multiple Connections" "1"
setFormField "Preroute Instances" "For Gap <" "2"
formApply "Preroute Instances"

;# For sdram0 --> cacheline3 : vs_dp_yadmc
formDefault "Preroute Instances"
setToggleField "Preroute Instances" "Instance Type(s)" "Pad" 0
setToggleField "Preroute Instances" "Instance Type(s)" "Cover" 0
setFormField "Preroute Instances" "Instances" "Specified"
setFormField "Preroute Instances" "Instance Name(s)" "or1200_soc_top_inst/sdram0/cacheline3/vs_dp_yadmc"
setToggleField "Preroute Instances" "Skip Side(s)" "Left" 0 
setToggleField "Preroute Instances" "Skip Side(s)" "Right" 1
setToggleField "Preroute Instances" "Skip Side(s)" "Bottom" 0
setToggleField "Preroute Instances" "Skip Side(s)" "Top" 1
setFormField "Preroute Instances" "Extend for Multiple Connections" "1"
setFormField "Preroute Instances" "For Gap <" "2"
formApply "Preroute Instances"

;# For sdram0 --> cachetags vs_sp_yadmc
formDefault "Preroute Instances"
setToggleField "Preroute Instances" "Instance Type(s)" "Pad" 0
setToggleField "Preroute Instances" "Instance Type(s)" "Cover" 0
setFormField "Preroute Instances" "Instances" "Specified"
setFormField "Preroute Instances" "Instance Name(s)" "or1200_soc_top_inst/sdram0/cachetags/vs_sp_yadmc"
setToggleField "Preroute Instances" "Skip Side(s)" "Left" 1 
setToggleField "Preroute Instances" "Skip Side(s)" "Right" 1
setToggleField "Preroute Instances" "Skip Side(s)" "Bottom" 0
setToggleField "Preroute Instances" "Skip Side(s)" "Top" 0
setFormField "Preroute Instances" "Extend for Multiple Connections" "1"
setFormField "Preroute Instances" "For Gap <" "2"
formApply "Preroute Instances"



;# For sd_card --> u_sm_rxFifo vs_dp_sdcard
formDefault "Preroute Instances"
setToggleField "Preroute Instances" "Instance Type(s)" "Pad" 0
setToggleField "Preroute Instances" "Instance Type(s)" "Cover" 0
setFormField "Preroute Instances" "Instances" "Specified"
setFormField "Preroute Instances" "Instance Name(s)" "or1200_soc_top_inst/sd_card/u_sm_rxFifo/u_sm_fifo/u_sm_dpMem_dc/vs_dp_sdcard"
setToggleField "Preroute Instances" "Skip Side(s)" "Left" 1
setToggleField "Preroute Instances" "Skip Side(s)" "Right" 0
setToggleField "Preroute Instances" "Skip Side(s)" "Bottom" 0
setToggleField "Preroute Instances" "Skip Side(s)" "Top" 1
setFormField "Preroute Instances" "Extend for Multiple Connections" "1"
setFormField "Preroute Instances" "For Gap <" "2"
formApply "Preroute Instances"


;# For sd_card --> u_sm_txFifo vs_dp_sdcard
formDefault "Preroute Instances"
setToggleField "Preroute Instances" "Instance Type(s)" "Pad" 0
setToggleField "Preroute Instances" "Instance Type(s)" "Cover" 0
setFormField "Preroute Instances" "Instances" "Specified"
setFormField "Preroute Instances" "Instance Name(s)" "or1200_soc_top_inst/sd_card/u_sm_txFifo/u_sm_fifo/u_sm_dpMem_dc/vs_dp_sdcard"
setToggleField "Preroute Instances" "Skip Side(s)" "Left" 0
setToggleField "Preroute Instances" "Skip Side(s)" "Right" 1
setToggleField "Preroute Instances" "Skip Side(s)" "Bottom" 0
setToggleField "Preroute Instances" "Skip Side(s)" "Top" 1
setFormField "Preroute Instances" "Extend for Multiple Connections" "1"
setFormField "Preroute Instances" "For Gap <" "2"
formApply "Preroute Instances"

;# For aes_top --> u_ram_1 vs_sp_aes
formDefault "Preroute Instances"
setToggleField "Preroute Instances" "Instance Type(s)" "Pad" 0
setToggleField "Preroute Instances" "Instance Type(s)" "Cover" 0
setFormField "Preroute Instances" "Instances" "Specified"
setFormField "Preroute Instances" "Instance Name(s)" "or1200_soc_top_inst/aes_top_inst/aes_inst/u_ram_1/vs_sp_aes"
setToggleField "Preroute Instances" "Skip Side(s)" "Left" 1 
setToggleField "Preroute Instances" "Skip Side(s)" "Right" 0
setToggleField "Preroute Instances" "Skip Side(s)" "Bottom" 1
setToggleField "Preroute Instances" "Skip Side(s)" "Top" 0
setFormField "Preroute Instances" "Extend for Multiple Connections" "1"
setFormField "Preroute Instances" "For Gap <" "2"
formApply "Preroute Instances"


;# For aes_top --> u_ram_0 vs_sp_aes
formDefault "Preroute Instances"
setToggleField "Preroute Instances" "Instance Type(s)" "Pad" 0
setToggleField "Preroute Instances" "Instance Type(s)" "Cover" 0
setFormField "Preroute Instances" "Instances" "Specified"
setFormField "Preroute Instances" "Instance Name(s)" "or1200_soc_top_inst/aes_top_inst/aes_inst/u_ram_0/vs_sp_aes"
setToggleField "Preroute Instances" "Skip Side(s)" "Left" 0
setToggleField "Preroute Instances" "Skip Side(s)" "Right" 0
setToggleField "Preroute Instances" "Skip Side(s)" "Bottom" 1
setToggleField "Preroute Instances" "Skip Side(s)" "Top" 1
setFormField "Preroute Instances" "Extend for Multiple Connections" "1"
setFormField "Preroute Instances" "For Gap <" "2"
formApply "Preroute Instances"

formCancel "Preroute Instances"
