

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "axi_stream_loop" "NUM_INSTANCES" "DEVICE_ID"  "C_ctr_AXIlite_BASEADDR" "C_ctr_AXIlite_HIGHADDR"
}
