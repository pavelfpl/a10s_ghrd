config a10s_ghrd_altera_mm_interconnect_181_dvebr6a_cfg;
		design a10s_ghrd_altera_mm_interconnect_181_dvebr6a;
		instance a10s_ghrd_altera_mm_interconnect_181_dvebr6a.f2sdram_m_master_translator use a10s_ghrd_altera_merlin_master_translator_181.altera_merlin_master_translator;
		instance a10s_ghrd_altera_mm_interconnect_181_dvebr6a.f2sdram_m_master_agent use a10s_ghrd_altera_merlin_master_agent_181.altera_merlin_master_agent;
		instance a10s_ghrd_altera_mm_interconnect_181_dvebr6a.arria10_hps_f2sdram0_data_agent use a10s_ghrd_altera_merlin_axi_slave_ni_181.altera_merlin_axi_slave_ni;
		instance a10s_ghrd_altera_mm_interconnect_181_dvebr6a.router use a10s_ghrd_altera_merlin_router_181.a10s_ghrd_altera_merlin_router_181_d2ydiqy;
		instance a10s_ghrd_altera_mm_interconnect_181_dvebr6a.router_001 use a10s_ghrd_altera_merlin_router_181.a10s_ghrd_altera_merlin_router_181_lrp2dny;
		instance a10s_ghrd_altera_mm_interconnect_181_dvebr6a.router_002 use a10s_ghrd_altera_merlin_router_181.a10s_ghrd_altera_merlin_router_181_lrp2dny;
		instance a10s_ghrd_altera_mm_interconnect_181_dvebr6a.f2sdram_m_master_limiter use a10s_ghrd_altera_merlin_traffic_limiter_181.altera_merlin_traffic_limiter;
		instance a10s_ghrd_altera_mm_interconnect_181_dvebr6a.cmd_demux use a10s_ghrd_altera_merlin_demultiplexer_181.a10s_ghrd_altera_merlin_demultiplexer_181_6w3v2gy;
		instance a10s_ghrd_altera_mm_interconnect_181_dvebr6a.cmd_mux use a10s_ghrd_altera_merlin_multiplexer_181.a10s_ghrd_altera_merlin_multiplexer_181_wyhutqa;
		instance a10s_ghrd_altera_mm_interconnect_181_dvebr6a.cmd_mux_001 use a10s_ghrd_altera_merlin_multiplexer_181.a10s_ghrd_altera_merlin_multiplexer_181_wyhutqa;
		instance a10s_ghrd_altera_mm_interconnect_181_dvebr6a.rsp_demux use a10s_ghrd_altera_merlin_demultiplexer_181.a10s_ghrd_altera_merlin_demultiplexer_181_xkcgyti;
		instance a10s_ghrd_altera_mm_interconnect_181_dvebr6a.rsp_demux_001 use a10s_ghrd_altera_merlin_demultiplexer_181.a10s_ghrd_altera_merlin_demultiplexer_181_xkcgyti;
		instance a10s_ghrd_altera_mm_interconnect_181_dvebr6a.rsp_mux use a10s_ghrd_altera_merlin_multiplexer_181.a10s_ghrd_altera_merlin_multiplexer_181_zyw6nsy;
		instance a10s_ghrd_altera_mm_interconnect_181_dvebr6a.arria10_hps_f2sdram0_data_wr_cmd_width_adapter use a10s_ghrd_altera_merlin_width_adapter_181.altera_merlin_width_adapter;
		instance a10s_ghrd_altera_mm_interconnect_181_dvebr6a.arria10_hps_f2sdram0_data_rd_cmd_width_adapter use a10s_ghrd_altera_merlin_width_adapter_181.altera_merlin_width_adapter;
		instance a10s_ghrd_altera_mm_interconnect_181_dvebr6a.arria10_hps_f2sdram0_data_wr_rsp_width_adapter use a10s_ghrd_altera_merlin_width_adapter_181.altera_merlin_width_adapter;
		instance a10s_ghrd_altera_mm_interconnect_181_dvebr6a.arria10_hps_f2sdram0_data_rd_rsp_width_adapter use a10s_ghrd_altera_merlin_width_adapter_181.altera_merlin_width_adapter;
endconfig
