	a10s_ghrd u0 (
		.button_pio_external_connection_export    (<connected-to-button_pio_external_connection_export>),    //      button_pio_external_connection.export
		.clk_100_clk                              (<connected-to-clk_100_clk>),                              //                             clk_100.clk
		.clock_bridge_0_in_clk_clk                (<connected-to-clock_bridge_0_in_clk_clk>),                //               clock_bridge_0_in_clk.clk
		.dc_fifo_0_out_data                       (<connected-to-dc_fifo_0_out_data>),                       //                       dc_fifo_0_out.data
		.dc_fifo_0_out_valid                      (<connected-to-dc_fifo_0_out_valid>),                      //                                    .valid
		.dc_fifo_0_out_ready                      (<connected-to-dc_fifo_0_out_ready>),                      //                                    .ready
		.dc_fifo_1_in_data                        (<connected-to-dc_fifo_1_in_data>),                        //                        dc_fifo_1_in.data
		.dc_fifo_1_in_valid                       (<connected-to-dc_fifo_1_in_valid>),                       //                                    .valid
		.dc_fifo_1_in_ready                       (<connected-to-dc_fifo_1_in_ready>),                       //                                    .ready
		.dipsw_pio_external_connection_export     (<connected-to-dipsw_pio_external_connection_export>),     //       dipsw_pio_external_connection.export
		.emif_a10_hps_mem_conduit_end_mem_ck      (<connected-to-emif_a10_hps_mem_conduit_end_mem_ck>),      //        emif_a10_hps_mem_conduit_end.mem_ck
		.emif_a10_hps_mem_conduit_end_mem_ck_n    (<connected-to-emif_a10_hps_mem_conduit_end_mem_ck_n>),    //                                    .mem_ck_n
		.emif_a10_hps_mem_conduit_end_mem_a       (<connected-to-emif_a10_hps_mem_conduit_end_mem_a>),       //                                    .mem_a
		.emif_a10_hps_mem_conduit_end_mem_act_n   (<connected-to-emif_a10_hps_mem_conduit_end_mem_act_n>),   //                                    .mem_act_n
		.emif_a10_hps_mem_conduit_end_mem_ba      (<connected-to-emif_a10_hps_mem_conduit_end_mem_ba>),      //                                    .mem_ba
		.emif_a10_hps_mem_conduit_end_mem_bg      (<connected-to-emif_a10_hps_mem_conduit_end_mem_bg>),      //                                    .mem_bg
		.emif_a10_hps_mem_conduit_end_mem_cke     (<connected-to-emif_a10_hps_mem_conduit_end_mem_cke>),     //                                    .mem_cke
		.emif_a10_hps_mem_conduit_end_mem_cs_n    (<connected-to-emif_a10_hps_mem_conduit_end_mem_cs_n>),    //                                    .mem_cs_n
		.emif_a10_hps_mem_conduit_end_mem_odt     (<connected-to-emif_a10_hps_mem_conduit_end_mem_odt>),     //                                    .mem_odt
		.emif_a10_hps_mem_conduit_end_mem_reset_n (<connected-to-emif_a10_hps_mem_conduit_end_mem_reset_n>), //                                    .mem_reset_n
		.emif_a10_hps_mem_conduit_end_mem_par     (<connected-to-emif_a10_hps_mem_conduit_end_mem_par>),     //                                    .mem_par
		.emif_a10_hps_mem_conduit_end_mem_alert_n (<connected-to-emif_a10_hps_mem_conduit_end_mem_alert_n>), //                                    .mem_alert_n
		.emif_a10_hps_mem_conduit_end_mem_dqs     (<connected-to-emif_a10_hps_mem_conduit_end_mem_dqs>),     //                                    .mem_dqs
		.emif_a10_hps_mem_conduit_end_mem_dqs_n   (<connected-to-emif_a10_hps_mem_conduit_end_mem_dqs_n>),   //                                    .mem_dqs_n
		.emif_a10_hps_mem_conduit_end_mem_dq      (<connected-to-emif_a10_hps_mem_conduit_end_mem_dq>),      //                                    .mem_dq
		.emif_a10_hps_mem_conduit_end_mem_dbi_n   (<connected-to-emif_a10_hps_mem_conduit_end_mem_dbi_n>),   //                                    .mem_dbi_n
		.emif_a10_hps_oct_conduit_end_oct_rzqin   (<connected-to-emif_a10_hps_oct_conduit_end_oct_rzqin>),   //        emif_a10_hps_oct_conduit_end.oct_rzqin
		.emif_a10_hps_pll_ref_clk_clock_sink_clk  (<connected-to-emif_a10_hps_pll_ref_clk_clock_sink_clk>),  // emif_a10_hps_pll_ref_clk_clock_sink.clk
		.f2h_cold_reset_req_reset_n               (<connected-to-f2h_cold_reset_req_reset_n>),               //                  f2h_cold_reset_req.reset_n
		.f2h_debug_reset_req_reset_n              (<connected-to-f2h_debug_reset_req_reset_n>),              //                 f2h_debug_reset_req.reset_n
		.f2h_stm_hw_events_stm_hwevents           (<connected-to-f2h_stm_hw_events_stm_hwevents>),           //                   f2h_stm_hw_events.stm_hwevents
		.f2h_warm_reset_req_reset_n               (<connected-to-f2h_warm_reset_req_reset_n>),               //                  f2h_warm_reset_req.reset_n
		.hps_fpga_reset_reset                     (<connected-to-hps_fpga_reset_reset>),                     //                      hps_fpga_reset.reset
		.hps_io_hps_io_phery_emac0_TX_CLK         (<connected-to-hps_io_hps_io_phery_emac0_TX_CLK>),         //                              hps_io.hps_io_phery_emac0_TX_CLK
		.hps_io_hps_io_phery_emac0_TXD0           (<connected-to-hps_io_hps_io_phery_emac0_TXD0>),           //                                    .hps_io_phery_emac0_TXD0
		.hps_io_hps_io_phery_emac0_TXD1           (<connected-to-hps_io_hps_io_phery_emac0_TXD1>),           //                                    .hps_io_phery_emac0_TXD1
		.hps_io_hps_io_phery_emac0_TXD2           (<connected-to-hps_io_hps_io_phery_emac0_TXD2>),           //                                    .hps_io_phery_emac0_TXD2
		.hps_io_hps_io_phery_emac0_TXD3           (<connected-to-hps_io_hps_io_phery_emac0_TXD3>),           //                                    .hps_io_phery_emac0_TXD3
		.hps_io_hps_io_phery_emac0_RX_CTL         (<connected-to-hps_io_hps_io_phery_emac0_RX_CTL>),         //                                    .hps_io_phery_emac0_RX_CTL
		.hps_io_hps_io_phery_emac0_TX_CTL         (<connected-to-hps_io_hps_io_phery_emac0_TX_CTL>),         //                                    .hps_io_phery_emac0_TX_CTL
		.hps_io_hps_io_phery_emac0_RX_CLK         (<connected-to-hps_io_hps_io_phery_emac0_RX_CLK>),         //                                    .hps_io_phery_emac0_RX_CLK
		.hps_io_hps_io_phery_emac0_RXD0           (<connected-to-hps_io_hps_io_phery_emac0_RXD0>),           //                                    .hps_io_phery_emac0_RXD0
		.hps_io_hps_io_phery_emac0_RXD1           (<connected-to-hps_io_hps_io_phery_emac0_RXD1>),           //                                    .hps_io_phery_emac0_RXD1
		.hps_io_hps_io_phery_emac0_RXD2           (<connected-to-hps_io_hps_io_phery_emac0_RXD2>),           //                                    .hps_io_phery_emac0_RXD2
		.hps_io_hps_io_phery_emac0_RXD3           (<connected-to-hps_io_hps_io_phery_emac0_RXD3>),           //                                    .hps_io_phery_emac0_RXD3
		.hps_io_hps_io_phery_emac0_MDIO           (<connected-to-hps_io_hps_io_phery_emac0_MDIO>),           //                                    .hps_io_phery_emac0_MDIO
		.hps_io_hps_io_phery_emac0_MDC            (<connected-to-hps_io_hps_io_phery_emac0_MDC>),            //                                    .hps_io_phery_emac0_MDC
		.hps_io_hps_io_phery_sdmmc_CMD            (<connected-to-hps_io_hps_io_phery_sdmmc_CMD>),            //                                    .hps_io_phery_sdmmc_CMD
		.hps_io_hps_io_phery_sdmmc_D0             (<connected-to-hps_io_hps_io_phery_sdmmc_D0>),             //                                    .hps_io_phery_sdmmc_D0
		.hps_io_hps_io_phery_sdmmc_D1             (<connected-to-hps_io_hps_io_phery_sdmmc_D1>),             //                                    .hps_io_phery_sdmmc_D1
		.hps_io_hps_io_phery_sdmmc_D2             (<connected-to-hps_io_hps_io_phery_sdmmc_D2>),             //                                    .hps_io_phery_sdmmc_D2
		.hps_io_hps_io_phery_sdmmc_D3             (<connected-to-hps_io_hps_io_phery_sdmmc_D3>),             //                                    .hps_io_phery_sdmmc_D3
		.hps_io_hps_io_phery_sdmmc_CCLK           (<connected-to-hps_io_hps_io_phery_sdmmc_CCLK>),           //                                    .hps_io_phery_sdmmc_CCLK
		.hps_io_hps_io_phery_usb0_DATA0           (<connected-to-hps_io_hps_io_phery_usb0_DATA0>),           //                                    .hps_io_phery_usb0_DATA0
		.hps_io_hps_io_phery_usb0_DATA1           (<connected-to-hps_io_hps_io_phery_usb0_DATA1>),           //                                    .hps_io_phery_usb0_DATA1
		.hps_io_hps_io_phery_usb0_DATA2           (<connected-to-hps_io_hps_io_phery_usb0_DATA2>),           //                                    .hps_io_phery_usb0_DATA2
		.hps_io_hps_io_phery_usb0_DATA3           (<connected-to-hps_io_hps_io_phery_usb0_DATA3>),           //                                    .hps_io_phery_usb0_DATA3
		.hps_io_hps_io_phery_usb0_DATA4           (<connected-to-hps_io_hps_io_phery_usb0_DATA4>),           //                                    .hps_io_phery_usb0_DATA4
		.hps_io_hps_io_phery_usb0_DATA5           (<connected-to-hps_io_hps_io_phery_usb0_DATA5>),           //                                    .hps_io_phery_usb0_DATA5
		.hps_io_hps_io_phery_usb0_DATA6           (<connected-to-hps_io_hps_io_phery_usb0_DATA6>),           //                                    .hps_io_phery_usb0_DATA6
		.hps_io_hps_io_phery_usb0_DATA7           (<connected-to-hps_io_hps_io_phery_usb0_DATA7>),           //                                    .hps_io_phery_usb0_DATA7
		.hps_io_hps_io_phery_usb0_CLK             (<connected-to-hps_io_hps_io_phery_usb0_CLK>),             //                                    .hps_io_phery_usb0_CLK
		.hps_io_hps_io_phery_usb0_STP             (<connected-to-hps_io_hps_io_phery_usb0_STP>),             //                                    .hps_io_phery_usb0_STP
		.hps_io_hps_io_phery_usb0_DIR             (<connected-to-hps_io_hps_io_phery_usb0_DIR>),             //                                    .hps_io_phery_usb0_DIR
		.hps_io_hps_io_phery_usb0_NXT             (<connected-to-hps_io_hps_io_phery_usb0_NXT>),             //                                    .hps_io_phery_usb0_NXT
		.hps_io_hps_io_phery_uart1_RX             (<connected-to-hps_io_hps_io_phery_uart1_RX>),             //                                    .hps_io_phery_uart1_RX
		.hps_io_hps_io_phery_uart1_TX             (<connected-to-hps_io_hps_io_phery_uart1_TX>),             //                                    .hps_io_phery_uart1_TX
		.hps_io_hps_io_phery_i2c0_SDA             (<connected-to-hps_io_hps_io_phery_i2c0_SDA>),             //                                    .hps_io_phery_i2c0_SDA
		.hps_io_hps_io_phery_i2c0_SCL             (<connected-to-hps_io_hps_io_phery_i2c0_SCL>),             //                                    .hps_io_phery_i2c0_SCL
		.hps_io_hps_io_gpio_gpio2_io8             (<connected-to-hps_io_hps_io_gpio_gpio2_io8>),             //                                    .hps_io_gpio_gpio2_io8
		.hps_io_hps_io_gpio_gpio2_io9             (<connected-to-hps_io_hps_io_gpio_gpio2_io9>),             //                                    .hps_io_gpio_gpio2_io9
		.hps_io_hps_io_gpio_gpio2_io10            (<connected-to-hps_io_hps_io_gpio_gpio2_io10>),            //                                    .hps_io_gpio_gpio2_io10
		.hps_io_hps_io_gpio_gpio2_io11            (<connected-to-hps_io_hps_io_gpio_gpio2_io11>),            //                                    .hps_io_gpio_gpio2_io11
		.hps_io_hps_io_gpio_gpio1_io1             (<connected-to-hps_io_hps_io_gpio_gpio1_io1>),             //                                    .hps_io_gpio_gpio1_io1
		.hps_io_hps_io_gpio_gpio1_io4             (<connected-to-hps_io_hps_io_gpio_gpio1_io4>),             //                                    .hps_io_gpio_gpio1_io4
		.issp_hps_resets_source                   (<connected-to-issp_hps_resets_source>),                   //                     issp_hps_resets.source
		.led_pio_external_connection_export       (<connected-to-led_pio_external_connection_export>),       //         led_pio_external_connection.export
		.reset_reset_n                            (<connected-to-reset_reset_n>)                             //                               reset.reset_n
	);

