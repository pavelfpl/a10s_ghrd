config a10s_ghrd_altera_mm_interconnect_181_6u7usai_cfg;
		design a10s_ghrd_altera_mm_interconnect_181_6u7usai;
		instance a10s_ghrd_altera_mm_interconnect_181_6u7usai.hps_m_master_translator use a10s_ghrd_altera_merlin_master_translator_181.altera_merlin_master_translator;
		instance a10s_ghrd_altera_mm_interconnect_181_6u7usai.msgdma_0_mm_read_translator use a10s_ghrd_altera_merlin_master_translator_181.altera_merlin_master_translator;
		instance a10s_ghrd_altera_mm_interconnect_181_6u7usai.msgdma_1_mm_write_translator use a10s_ghrd_altera_merlin_master_translator_181.altera_merlin_master_translator;
		instance a10s_ghrd_altera_mm_interconnect_181_6u7usai.hps_m_master_agent use a10s_ghrd_altera_merlin_master_agent_181.altera_merlin_master_agent;
		instance a10s_ghrd_altera_mm_interconnect_181_6u7usai.msgdma_0_mm_read_agent use a10s_ghrd_altera_merlin_master_agent_181.altera_merlin_master_agent;
		instance a10s_ghrd_altera_mm_interconnect_181_6u7usai.msgdma_1_mm_write_agent use a10s_ghrd_altera_merlin_master_agent_181.altera_merlin_master_agent;
		instance a10s_ghrd_altera_mm_interconnect_181_6u7usai.arria10_hps_f2h_axi_slave_agent use a10s_ghrd_altera_merlin_axi_slave_ni_181.altera_merlin_axi_slave_ni;
		instance a10s_ghrd_altera_mm_interconnect_181_6u7usai.router use a10s_ghrd_altera_merlin_router_181.a10s_ghrd_altera_merlin_router_181_ry4t2zi;
		instance a10s_ghrd_altera_mm_interconnect_181_6u7usai.router_001 use a10s_ghrd_altera_merlin_router_181.a10s_ghrd_altera_merlin_router_181_ry4t2zi;
		instance a10s_ghrd_altera_mm_interconnect_181_6u7usai.router_002 use a10s_ghrd_altera_merlin_router_181.a10s_ghrd_altera_merlin_router_181_ry4t2zi;
		instance a10s_ghrd_altera_mm_interconnect_181_6u7usai.router_003 use a10s_ghrd_altera_merlin_router_181.a10s_ghrd_altera_merlin_router_181_qrnsvty;
		instance a10s_ghrd_altera_mm_interconnect_181_6u7usai.router_004 use a10s_ghrd_altera_merlin_router_181.a10s_ghrd_altera_merlin_router_181_qrnsvty;
		instance a10s_ghrd_altera_mm_interconnect_181_6u7usai.hps_m_master_limiter use a10s_ghrd_altera_merlin_traffic_limiter_181.altera_merlin_traffic_limiter;
		instance a10s_ghrd_altera_mm_interconnect_181_6u7usai.msgdma_0_mm_read_limiter use a10s_ghrd_altera_merlin_traffic_limiter_181.altera_merlin_traffic_limiter;
		instance a10s_ghrd_altera_mm_interconnect_181_6u7usai.cmd_demux use a10s_ghrd_altera_merlin_demultiplexer_181.a10s_ghrd_altera_merlin_demultiplexer_181_djvhlki;
		instance a10s_ghrd_altera_mm_interconnect_181_6u7usai.cmd_demux_001 use a10s_ghrd_altera_merlin_demultiplexer_181.a10s_ghrd_altera_merlin_demultiplexer_181_djvhlki;
		instance a10s_ghrd_altera_mm_interconnect_181_6u7usai.cmd_demux_002 use a10s_ghrd_altera_merlin_demultiplexer_181.a10s_ghrd_altera_merlin_demultiplexer_181_b2d2fny;
		instance a10s_ghrd_altera_mm_interconnect_181_6u7usai.cmd_mux use a10s_ghrd_altera_merlin_multiplexer_181.a10s_ghrd_altera_merlin_multiplexer_181_3kyzkga;
		instance a10s_ghrd_altera_mm_interconnect_181_6u7usai.cmd_mux_001 use a10s_ghrd_altera_merlin_multiplexer_181.a10s_ghrd_altera_merlin_multiplexer_181_3kyzkga;
		instance a10s_ghrd_altera_mm_interconnect_181_6u7usai.rsp_demux use a10s_ghrd_altera_merlin_demultiplexer_181.a10s_ghrd_altera_merlin_demultiplexer_181_tjqhsiq;
		instance a10s_ghrd_altera_mm_interconnect_181_6u7usai.rsp_demux_001 use a10s_ghrd_altera_merlin_demultiplexer_181.a10s_ghrd_altera_merlin_demultiplexer_181_tjqhsiq;
		instance a10s_ghrd_altera_mm_interconnect_181_6u7usai.rsp_mux use a10s_ghrd_altera_merlin_multiplexer_181.a10s_ghrd_altera_merlin_multiplexer_181_dwv3zta;
		instance a10s_ghrd_altera_mm_interconnect_181_6u7usai.rsp_mux_001 use a10s_ghrd_altera_merlin_multiplexer_181.a10s_ghrd_altera_merlin_multiplexer_181_dwv3zta;
		instance a10s_ghrd_altera_mm_interconnect_181_6u7usai.rsp_mux_002 use a10s_ghrd_altera_merlin_multiplexer_181.a10s_ghrd_altera_merlin_multiplexer_181_dwv3zta;
		instance a10s_ghrd_altera_mm_interconnect_181_6u7usai.arria10_hps_f2h_axi_slave_wr_cmd_width_adapter use a10s_ghrd_altera_merlin_width_adapter_181.altera_merlin_width_adapter;
		instance a10s_ghrd_altera_mm_interconnect_181_6u7usai.arria10_hps_f2h_axi_slave_rd_cmd_width_adapter use a10s_ghrd_altera_merlin_width_adapter_181.altera_merlin_width_adapter;
		instance a10s_ghrd_altera_mm_interconnect_181_6u7usai.arria10_hps_f2h_axi_slave_wr_rsp_width_adapter use a10s_ghrd_altera_merlin_width_adapter_181.altera_merlin_width_adapter;
		instance a10s_ghrd_altera_mm_interconnect_181_6u7usai.arria10_hps_f2h_axi_slave_rd_rsp_width_adapter use a10s_ghrd_altera_merlin_width_adapter_181.altera_merlin_width_adapter;
endconfig

