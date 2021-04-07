
module a10s_ghrd (
	button_pio_external_connection_export,
	clk_100_clk,
	clock_bridge_0_in_clk_clk,
	dc_fifo_0_out_data,
	dc_fifo_0_out_valid,
	dc_fifo_0_out_ready,
	dc_fifo_1_in_data,
	dc_fifo_1_in_valid,
	dc_fifo_1_in_ready,
	dipsw_pio_external_connection_export,
	emif_a10_hps_mem_conduit_end_mem_ck,
	emif_a10_hps_mem_conduit_end_mem_ck_n,
	emif_a10_hps_mem_conduit_end_mem_a,
	emif_a10_hps_mem_conduit_end_mem_act_n,
	emif_a10_hps_mem_conduit_end_mem_ba,
	emif_a10_hps_mem_conduit_end_mem_bg,
	emif_a10_hps_mem_conduit_end_mem_cke,
	emif_a10_hps_mem_conduit_end_mem_cs_n,
	emif_a10_hps_mem_conduit_end_mem_odt,
	emif_a10_hps_mem_conduit_end_mem_reset_n,
	emif_a10_hps_mem_conduit_end_mem_par,
	emif_a10_hps_mem_conduit_end_mem_alert_n,
	emif_a10_hps_mem_conduit_end_mem_dqs,
	emif_a10_hps_mem_conduit_end_mem_dqs_n,
	emif_a10_hps_mem_conduit_end_mem_dq,
	emif_a10_hps_mem_conduit_end_mem_dbi_n,
	emif_a10_hps_oct_conduit_end_oct_rzqin,
	emif_a10_hps_pll_ref_clk_clock_sink_clk,
	f2h_cold_reset_req_reset_n,
	f2h_debug_reset_req_reset_n,
	f2h_stm_hw_events_stm_hwevents,
	f2h_warm_reset_req_reset_n,
	hps_fpga_reset_reset,
	hps_io_hps_io_phery_emac0_TX_CLK,
	hps_io_hps_io_phery_emac0_TXD0,
	hps_io_hps_io_phery_emac0_TXD1,
	hps_io_hps_io_phery_emac0_TXD2,
	hps_io_hps_io_phery_emac0_TXD3,
	hps_io_hps_io_phery_emac0_RX_CTL,
	hps_io_hps_io_phery_emac0_TX_CTL,
	hps_io_hps_io_phery_emac0_RX_CLK,
	hps_io_hps_io_phery_emac0_RXD0,
	hps_io_hps_io_phery_emac0_RXD1,
	hps_io_hps_io_phery_emac0_RXD2,
	hps_io_hps_io_phery_emac0_RXD3,
	hps_io_hps_io_phery_emac0_MDIO,
	hps_io_hps_io_phery_emac0_MDC,
	hps_io_hps_io_phery_sdmmc_CMD,
	hps_io_hps_io_phery_sdmmc_D0,
	hps_io_hps_io_phery_sdmmc_D1,
	hps_io_hps_io_phery_sdmmc_D2,
	hps_io_hps_io_phery_sdmmc_D3,
	hps_io_hps_io_phery_sdmmc_CCLK,
	hps_io_hps_io_phery_usb0_DATA0,
	hps_io_hps_io_phery_usb0_DATA1,
	hps_io_hps_io_phery_usb0_DATA2,
	hps_io_hps_io_phery_usb0_DATA3,
	hps_io_hps_io_phery_usb0_DATA4,
	hps_io_hps_io_phery_usb0_DATA5,
	hps_io_hps_io_phery_usb0_DATA6,
	hps_io_hps_io_phery_usb0_DATA7,
	hps_io_hps_io_phery_usb0_CLK,
	hps_io_hps_io_phery_usb0_STP,
	hps_io_hps_io_phery_usb0_DIR,
	hps_io_hps_io_phery_usb0_NXT,
	hps_io_hps_io_phery_uart1_RX,
	hps_io_hps_io_phery_uart1_TX,
	hps_io_hps_io_phery_i2c0_SDA,
	hps_io_hps_io_phery_i2c0_SCL,
	hps_io_hps_io_gpio_gpio2_io8,
	hps_io_hps_io_gpio_gpio2_io9,
	hps_io_hps_io_gpio_gpio2_io10,
	hps_io_hps_io_gpio_gpio2_io11,
	hps_io_hps_io_gpio_gpio1_io1,
	hps_io_hps_io_gpio_gpio1_io4,
	issp_hps_resets_source,
	led_pio_external_connection_export,
	reset_reset_n);	

	input	[1:0]	button_pio_external_connection_export;
	input		clk_100_clk;
	input		clock_bridge_0_in_clk_clk;
	output	[31:0]	dc_fifo_0_out_data;
	output		dc_fifo_0_out_valid;
	input		dc_fifo_0_out_ready;
	input	[31:0]	dc_fifo_1_in_data;
	input		dc_fifo_1_in_valid;
	output		dc_fifo_1_in_ready;
	input	[1:0]	dipsw_pio_external_connection_export;
	output	[0:0]	emif_a10_hps_mem_conduit_end_mem_ck;
	output	[0:0]	emif_a10_hps_mem_conduit_end_mem_ck_n;
	output	[16:0]	emif_a10_hps_mem_conduit_end_mem_a;
	output	[0:0]	emif_a10_hps_mem_conduit_end_mem_act_n;
	output	[1:0]	emif_a10_hps_mem_conduit_end_mem_ba;
	output	[0:0]	emif_a10_hps_mem_conduit_end_mem_bg;
	output	[0:0]	emif_a10_hps_mem_conduit_end_mem_cke;
	output	[0:0]	emif_a10_hps_mem_conduit_end_mem_cs_n;
	output	[0:0]	emif_a10_hps_mem_conduit_end_mem_odt;
	output	[0:0]	emif_a10_hps_mem_conduit_end_mem_reset_n;
	output	[0:0]	emif_a10_hps_mem_conduit_end_mem_par;
	input	[0:0]	emif_a10_hps_mem_conduit_end_mem_alert_n;
	inout	[3:0]	emif_a10_hps_mem_conduit_end_mem_dqs;
	inout	[3:0]	emif_a10_hps_mem_conduit_end_mem_dqs_n;
	inout	[31:0]	emif_a10_hps_mem_conduit_end_mem_dq;
	inout	[3:0]	emif_a10_hps_mem_conduit_end_mem_dbi_n;
	input		emif_a10_hps_oct_conduit_end_oct_rzqin;
	input		emif_a10_hps_pll_ref_clk_clock_sink_clk;
	input		f2h_cold_reset_req_reset_n;
	input		f2h_debug_reset_req_reset_n;
	input	[27:0]	f2h_stm_hw_events_stm_hwevents;
	input		f2h_warm_reset_req_reset_n;
	output		hps_fpga_reset_reset;
	output		hps_io_hps_io_phery_emac0_TX_CLK;
	output		hps_io_hps_io_phery_emac0_TXD0;
	output		hps_io_hps_io_phery_emac0_TXD1;
	output		hps_io_hps_io_phery_emac0_TXD2;
	output		hps_io_hps_io_phery_emac0_TXD3;
	input		hps_io_hps_io_phery_emac0_RX_CTL;
	output		hps_io_hps_io_phery_emac0_TX_CTL;
	input		hps_io_hps_io_phery_emac0_RX_CLK;
	input		hps_io_hps_io_phery_emac0_RXD0;
	input		hps_io_hps_io_phery_emac0_RXD1;
	input		hps_io_hps_io_phery_emac0_RXD2;
	input		hps_io_hps_io_phery_emac0_RXD3;
	inout		hps_io_hps_io_phery_emac0_MDIO;
	output		hps_io_hps_io_phery_emac0_MDC;
	inout		hps_io_hps_io_phery_sdmmc_CMD;
	inout		hps_io_hps_io_phery_sdmmc_D0;
	inout		hps_io_hps_io_phery_sdmmc_D1;
	inout		hps_io_hps_io_phery_sdmmc_D2;
	inout		hps_io_hps_io_phery_sdmmc_D3;
	output		hps_io_hps_io_phery_sdmmc_CCLK;
	inout		hps_io_hps_io_phery_usb0_DATA0;
	inout		hps_io_hps_io_phery_usb0_DATA1;
	inout		hps_io_hps_io_phery_usb0_DATA2;
	inout		hps_io_hps_io_phery_usb0_DATA3;
	inout		hps_io_hps_io_phery_usb0_DATA4;
	inout		hps_io_hps_io_phery_usb0_DATA5;
	inout		hps_io_hps_io_phery_usb0_DATA6;
	inout		hps_io_hps_io_phery_usb0_DATA7;
	input		hps_io_hps_io_phery_usb0_CLK;
	output		hps_io_hps_io_phery_usb0_STP;
	input		hps_io_hps_io_phery_usb0_DIR;
	input		hps_io_hps_io_phery_usb0_NXT;
	input		hps_io_hps_io_phery_uart1_RX;
	output		hps_io_hps_io_phery_uart1_TX;
	inout		hps_io_hps_io_phery_i2c0_SDA;
	inout		hps_io_hps_io_phery_i2c0_SCL;
	inout		hps_io_hps_io_gpio_gpio2_io8;
	inout		hps_io_hps_io_gpio_gpio2_io9;
	inout		hps_io_hps_io_gpio_gpio2_io10;
	inout		hps_io_hps_io_gpio_gpio2_io11;
	inout		hps_io_hps_io_gpio_gpio1_io1;
	inout		hps_io_hps_io_gpio_gpio1_io4;
	output	[2:0]	issp_hps_resets_source;
	output	[1:0]	led_pio_external_connection_export;
	input		reset_reset_n;
endmodule
