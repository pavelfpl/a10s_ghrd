config a10s_ghrd_altera_msgdma_181_i3rt4ba_cfg;
		design a10s_ghrd_altera_msgdma_181_i3rt4ba;
		instance a10s_ghrd_altera_msgdma_181_i3rt4ba.dispatcher_internal use a10s_ghrd_modular_sgdma_dispatcher_181.dispatcher;
		instance a10s_ghrd_altera_msgdma_181_i3rt4ba.read_mstr_internal use a10s_ghrd_dma_read_master_181.read_master;
endconfig

