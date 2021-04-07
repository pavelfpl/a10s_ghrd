config a10s_ghrd_cfg;
		design a10s_ghrd;
		instance a10s_ghrd.ilc use a10s_ghrd_interrupt_latency_counter_181.interrupt_latency_counter;
		instance a10s_ghrd.arria10_hps use a10s_ghrd_altera_arria10_hps_181.a10s_ghrd_altera_arria10_hps_181_eeq4liq;
		instance a10s_ghrd.button_pio use a10s_ghrd_altera_avalon_pio_181.a10s_ghrd_altera_avalon_pio_181_u6z2bzq;
		instance a10s_ghrd.dc_fifo_0 use a10s_ghrd_altera_avalon_dc_fifo_181.altera_avalon_dc_fifo;
		instance a10s_ghrd.dc_fifo_1 use a10s_ghrd_altera_avalon_dc_fifo_181.altera_avalon_dc_fifo;
		instance a10s_ghrd.dipsw_pio use a10s_ghrd_altera_avalon_pio_181.a10s_ghrd_altera_avalon_pio_181_na6njny;
		instance a10s_ghrd.emif_a10_hps use a10s_ghrd_altera_emif_a10_hps_181.a10s_ghrd_altera_emif_a10_hps_181_oeawlci;
		instance a10s_ghrd.f2sdram_m use a10s_ghrd_altera_jtag_avalon_master_181.a10s_ghrd_altera_jtag_avalon_master_181_winiqja;
		instance a10s_ghrd.fpga_m use a10s_ghrd_altera_jtag_avalon_master_181.a10s_ghrd_altera_jtag_avalon_master_181_winiqja;
		instance a10s_ghrd.hps_m use a10s_ghrd_altera_jtag_avalon_master_181.a10s_ghrd_altera_jtag_avalon_master_181_winiqja;
		instance a10s_ghrd.issp use a10s_ghrd_altera_in_system_sources_probes_181.altsource_probe_top;
		instance a10s_ghrd.led_pio use a10s_ghrd_altera_avalon_pio_181.a10s_ghrd_altera_avalon_pio_181_b3m6h3q;
		instance a10s_ghrd.msgdma_0 use a10s_ghrd_altera_msgdma_181.a10s_ghrd_altera_msgdma_181_gdu7dji;
		instance a10s_ghrd.msgdma_1 use a10s_ghrd_altera_msgdma_181.a10s_ghrd_altera_msgdma_181_z42lkky;
		instance a10s_ghrd.onchip_memory2 use a10s_ghrd_altera_avalon_onchip_memory2_181.a10s_ghrd_altera_avalon_onchip_memory2_181_7kzxmpa;
		instance a10s_ghrd.pb_lwh2f use a10s_ghrd_altera_avalon_mm_bridge_181.altera_avalon_mm_bridge;
		instance a10s_ghrd.sysid_qsys use a10s_ghrd_altera_avalon_sysid_qsys_181.a10s_ghrd_altera_avalon_sysid_qsys_181_5kvhyxy;
		instance a10s_ghrd.mm_interconnect_0 use a10s_ghrd_altera_mm_interconnect_181.a10s_ghrd_altera_mm_interconnect_181_wrkfuuy;
		instance a10s_ghrd.mm_interconnect_1 use a10s_ghrd_altera_mm_interconnect_181.a10s_ghrd_altera_mm_interconnect_181_2w3xhoq;
		instance a10s_ghrd.mm_interconnect_2 use a10s_ghrd_altera_mm_interconnect_181.a10s_ghrd_altera_mm_interconnect_181_6tzbopq;
		instance a10s_ghrd.mm_interconnect_3 use a10s_ghrd_altera_mm_interconnect_181.a10s_ghrd_altera_mm_interconnect_181_6u7usai;
		instance a10s_ghrd.mm_interconnect_4 use a10s_ghrd_altera_mm_interconnect_181.a10s_ghrd_altera_mm_interconnect_181_dvebr6a;
		instance a10s_ghrd.irq_mapper use a10s_ghrd_altera_irq_mapper_181.a10s_ghrd_altera_irq_mapper_181_tzoq7yy;
		instance a10s_ghrd.irq_mapper_001 use a10s_ghrd_altera_irq_mapper_181.a10s_ghrd_altera_irq_mapper_181_5nwfdui;
		instance a10s_ghrd.irq_mapper_002 use a10s_ghrd_altera_irq_mapper_181.a10s_ghrd_altera_irq_mapper_181_acw3b6a;
		instance a10s_ghrd.rst_controller use a10s_ghrd_altera_reset_controller_181.altera_reset_controller;
		instance a10s_ghrd.rst_controller_001 use a10s_ghrd_altera_reset_controller_181.altera_reset_controller;
		instance a10s_ghrd.rst_controller_002 use a10s_ghrd_altera_reset_controller_181.altera_reset_controller;
		instance a10s_ghrd.rst_controller_003 use a10s_ghrd_altera_reset_controller_181.altera_reset_controller;
		instance a10s_ghrd.rst_controller_004 use a10s_ghrd_altera_reset_controller_181.altera_reset_controller;
		instance a10s_ghrd.rst_controller_005 use a10s_ghrd_altera_reset_controller_181.altera_reset_controller;
endconfig

