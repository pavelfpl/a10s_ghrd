config a10s_ghrd_altera_mm_interconnect_181_2w3xhoq_cfg;
		design a10s_ghrd_altera_mm_interconnect_181_2w3xhoq;
		instance a10s_ghrd_altera_mm_interconnect_181_2w3xhoq.fpga_m_master_translator use a10s_ghrd_altera_merlin_master_translator_181.altera_merlin_master_translator;
		instance a10s_ghrd_altera_mm_interconnect_181_2w3xhoq.pb_lwh2f_s0_translator use a10s_ghrd_altera_merlin_slave_translator_181.altera_merlin_slave_translator;
		instance a10s_ghrd_altera_mm_interconnect_181_2w3xhoq.arria10_hps_h2f_lw_axi_master_agent use a10s_ghrd_altera_merlin_axi_master_ni_181.altera_merlin_axi_master_ni;
		instance a10s_ghrd_altera_mm_interconnect_181_2w3xhoq.fpga_m_master_agent use a10s_ghrd_altera_merlin_master_agent_181.altera_merlin_master_agent;
		instance a10s_ghrd_altera_mm_interconnect_181_2w3xhoq.pb_lwh2f_s0_agent use a10s_ghrd_altera_merlin_slave_agent_181.altera_merlin_slave_agent;
		instance a10s_ghrd_altera_mm_interconnect_181_2w3xhoq.pb_lwh2f_s0_agent_rsp_fifo use a10s_ghrd_altera_avalon_sc_fifo_181.altera_avalon_sc_fifo;
		instance a10s_ghrd_altera_mm_interconnect_181_2w3xhoq.pb_lwh2f_s0_agent_rdata_fifo use a10s_ghrd_altera_avalon_sc_fifo_181.altera_avalon_sc_fifo;
		instance a10s_ghrd_altera_mm_interconnect_181_2w3xhoq.router use a10s_ghrd_altera_merlin_router_181.a10s_ghrd_altera_merlin_router_181_yloihfq;
		instance a10s_ghrd_altera_mm_interconnect_181_2w3xhoq.router_001 use a10s_ghrd_altera_merlin_router_181.a10s_ghrd_altera_merlin_router_181_yloihfq;
		instance a10s_ghrd_altera_mm_interconnect_181_2w3xhoq.router_002 use a10s_ghrd_altera_merlin_router_181.a10s_ghrd_altera_merlin_router_181_yloihfq;
		instance a10s_ghrd_altera_mm_interconnect_181_2w3xhoq.router_003 use a10s_ghrd_altera_merlin_router_181.a10s_ghrd_altera_merlin_router_181_4abqbui;
		instance a10s_ghrd_altera_mm_interconnect_181_2w3xhoq.pb_lwh2f_s0_burst_adapter use a10s_ghrd_altera_merlin_burst_adapter_181.altera_merlin_burst_adapter;
		instance a10s_ghrd_altera_mm_interconnect_181_2w3xhoq.cmd_demux use a10s_ghrd_altera_merlin_demultiplexer_181.a10s_ghrd_altera_merlin_demultiplexer_181_obrwnpa;
		instance a10s_ghrd_altera_mm_interconnect_181_2w3xhoq.cmd_demux_001 use a10s_ghrd_altera_merlin_demultiplexer_181.a10s_ghrd_altera_merlin_demultiplexer_181_obrwnpa;
		instance a10s_ghrd_altera_mm_interconnect_181_2w3xhoq.cmd_demux_002 use a10s_ghrd_altera_merlin_demultiplexer_181.a10s_ghrd_altera_merlin_demultiplexer_181_obrwnpa;
		instance a10s_ghrd_altera_mm_interconnect_181_2w3xhoq.cmd_mux use a10s_ghrd_altera_merlin_multiplexer_181.a10s_ghrd_altera_merlin_multiplexer_181_zoswswa;
		instance a10s_ghrd_altera_mm_interconnect_181_2w3xhoq.rsp_demux use a10s_ghrd_altera_merlin_demultiplexer_181.a10s_ghrd_altera_merlin_demultiplexer_181_yfxh77q;
		instance a10s_ghrd_altera_mm_interconnect_181_2w3xhoq.rsp_mux use a10s_ghrd_altera_merlin_multiplexer_181.a10s_ghrd_altera_merlin_multiplexer_181_nzjnjka;
		instance a10s_ghrd_altera_mm_interconnect_181_2w3xhoq.rsp_mux_001 use a10s_ghrd_altera_merlin_multiplexer_181.a10s_ghrd_altera_merlin_multiplexer_181_nzjnjka;
		instance a10s_ghrd_altera_mm_interconnect_181_2w3xhoq.rsp_mux_002 use a10s_ghrd_altera_merlin_multiplexer_181.a10s_ghrd_altera_merlin_multiplexer_181_nzjnjka;
		instance a10s_ghrd_altera_mm_interconnect_181_2w3xhoq.avalon_st_adapter use a10s_ghrd_altera_avalon_st_adapter_181.a10s_ghrd_altera_avalon_st_adapter_181_bbfziwi;
endconfig
