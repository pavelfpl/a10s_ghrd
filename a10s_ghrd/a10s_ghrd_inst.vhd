	component a10s_ghrd is
		port (
			button_pio_external_connection_export    : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- export
			clk_100_clk                              : in    std_logic                     := 'X';             -- clk
			clock_bridge_0_in_clk_clk                : in    std_logic                     := 'X';             -- clk
			dc_fifo_0_out_data                       : out   std_logic_vector(31 downto 0);                    -- data
			dc_fifo_0_out_valid                      : out   std_logic;                                        -- valid
			dc_fifo_0_out_ready                      : in    std_logic                     := 'X';             -- ready
			dc_fifo_1_in_data                        : in    std_logic_vector(31 downto 0) := (others => 'X'); -- data
			dc_fifo_1_in_valid                       : in    std_logic                     := 'X';             -- valid
			dc_fifo_1_in_ready                       : out   std_logic;                                        -- ready
			dipsw_pio_external_connection_export     : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- export
			emif_a10_hps_mem_conduit_end_mem_ck      : out   std_logic_vector(0 downto 0);                     -- mem_ck
			emif_a10_hps_mem_conduit_end_mem_ck_n    : out   std_logic_vector(0 downto 0);                     -- mem_ck_n
			emif_a10_hps_mem_conduit_end_mem_a       : out   std_logic_vector(16 downto 0);                    -- mem_a
			emif_a10_hps_mem_conduit_end_mem_act_n   : out   std_logic_vector(0 downto 0);                     -- mem_act_n
			emif_a10_hps_mem_conduit_end_mem_ba      : out   std_logic_vector(1 downto 0);                     -- mem_ba
			emif_a10_hps_mem_conduit_end_mem_bg      : out   std_logic_vector(0 downto 0);                     -- mem_bg
			emif_a10_hps_mem_conduit_end_mem_cke     : out   std_logic_vector(0 downto 0);                     -- mem_cke
			emif_a10_hps_mem_conduit_end_mem_cs_n    : out   std_logic_vector(0 downto 0);                     -- mem_cs_n
			emif_a10_hps_mem_conduit_end_mem_odt     : out   std_logic_vector(0 downto 0);                     -- mem_odt
			emif_a10_hps_mem_conduit_end_mem_reset_n : out   std_logic_vector(0 downto 0);                     -- mem_reset_n
			emif_a10_hps_mem_conduit_end_mem_par     : out   std_logic_vector(0 downto 0);                     -- mem_par
			emif_a10_hps_mem_conduit_end_mem_alert_n : in    std_logic_vector(0 downto 0)  := (others => 'X'); -- mem_alert_n
			emif_a10_hps_mem_conduit_end_mem_dqs     : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs
			emif_a10_hps_mem_conduit_end_mem_dqs_n   : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs_n
			emif_a10_hps_mem_conduit_end_mem_dq      : inout std_logic_vector(31 downto 0) := (others => 'X'); -- mem_dq
			emif_a10_hps_mem_conduit_end_mem_dbi_n   : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dbi_n
			emif_a10_hps_oct_conduit_end_oct_rzqin   : in    std_logic                     := 'X';             -- oct_rzqin
			emif_a10_hps_pll_ref_clk_clock_sink_clk  : in    std_logic                     := 'X';             -- clk
			f2h_cold_reset_req_reset_n               : in    std_logic                     := 'X';             -- reset_n
			f2h_debug_reset_req_reset_n              : in    std_logic                     := 'X';             -- reset_n
			f2h_stm_hw_events_stm_hwevents           : in    std_logic_vector(27 downto 0) := (others => 'X'); -- stm_hwevents
			f2h_warm_reset_req_reset_n               : in    std_logic                     := 'X';             -- reset_n
			hps_fpga_reset_reset                     : out   std_logic;                                        -- reset
			hps_io_hps_io_phery_emac0_TX_CLK         : out   std_logic;                                        -- hps_io_phery_emac0_TX_CLK
			hps_io_hps_io_phery_emac0_TXD0           : out   std_logic;                                        -- hps_io_phery_emac0_TXD0
			hps_io_hps_io_phery_emac0_TXD1           : out   std_logic;                                        -- hps_io_phery_emac0_TXD1
			hps_io_hps_io_phery_emac0_TXD2           : out   std_logic;                                        -- hps_io_phery_emac0_TXD2
			hps_io_hps_io_phery_emac0_TXD3           : out   std_logic;                                        -- hps_io_phery_emac0_TXD3
			hps_io_hps_io_phery_emac0_RX_CTL         : in    std_logic                     := 'X';             -- hps_io_phery_emac0_RX_CTL
			hps_io_hps_io_phery_emac0_TX_CTL         : out   std_logic;                                        -- hps_io_phery_emac0_TX_CTL
			hps_io_hps_io_phery_emac0_RX_CLK         : in    std_logic                     := 'X';             -- hps_io_phery_emac0_RX_CLK
			hps_io_hps_io_phery_emac0_RXD0           : in    std_logic                     := 'X';             -- hps_io_phery_emac0_RXD0
			hps_io_hps_io_phery_emac0_RXD1           : in    std_logic                     := 'X';             -- hps_io_phery_emac0_RXD1
			hps_io_hps_io_phery_emac0_RXD2           : in    std_logic                     := 'X';             -- hps_io_phery_emac0_RXD2
			hps_io_hps_io_phery_emac0_RXD3           : in    std_logic                     := 'X';             -- hps_io_phery_emac0_RXD3
			hps_io_hps_io_phery_emac0_MDIO           : inout std_logic                     := 'X';             -- hps_io_phery_emac0_MDIO
			hps_io_hps_io_phery_emac0_MDC            : out   std_logic;                                        -- hps_io_phery_emac0_MDC
			hps_io_hps_io_phery_sdmmc_CMD            : inout std_logic                     := 'X';             -- hps_io_phery_sdmmc_CMD
			hps_io_hps_io_phery_sdmmc_D0             : inout std_logic                     := 'X';             -- hps_io_phery_sdmmc_D0
			hps_io_hps_io_phery_sdmmc_D1             : inout std_logic                     := 'X';             -- hps_io_phery_sdmmc_D1
			hps_io_hps_io_phery_sdmmc_D2             : inout std_logic                     := 'X';             -- hps_io_phery_sdmmc_D2
			hps_io_hps_io_phery_sdmmc_D3             : inout std_logic                     := 'X';             -- hps_io_phery_sdmmc_D3
			hps_io_hps_io_phery_sdmmc_CCLK           : out   std_logic;                                        -- hps_io_phery_sdmmc_CCLK
			hps_io_hps_io_phery_usb0_DATA0           : inout std_logic                     := 'X';             -- hps_io_phery_usb0_DATA0
			hps_io_hps_io_phery_usb0_DATA1           : inout std_logic                     := 'X';             -- hps_io_phery_usb0_DATA1
			hps_io_hps_io_phery_usb0_DATA2           : inout std_logic                     := 'X';             -- hps_io_phery_usb0_DATA2
			hps_io_hps_io_phery_usb0_DATA3           : inout std_logic                     := 'X';             -- hps_io_phery_usb0_DATA3
			hps_io_hps_io_phery_usb0_DATA4           : inout std_logic                     := 'X';             -- hps_io_phery_usb0_DATA4
			hps_io_hps_io_phery_usb0_DATA5           : inout std_logic                     := 'X';             -- hps_io_phery_usb0_DATA5
			hps_io_hps_io_phery_usb0_DATA6           : inout std_logic                     := 'X';             -- hps_io_phery_usb0_DATA6
			hps_io_hps_io_phery_usb0_DATA7           : inout std_logic                     := 'X';             -- hps_io_phery_usb0_DATA7
			hps_io_hps_io_phery_usb0_CLK             : in    std_logic                     := 'X';             -- hps_io_phery_usb0_CLK
			hps_io_hps_io_phery_usb0_STP             : out   std_logic;                                        -- hps_io_phery_usb0_STP
			hps_io_hps_io_phery_usb0_DIR             : in    std_logic                     := 'X';             -- hps_io_phery_usb0_DIR
			hps_io_hps_io_phery_usb0_NXT             : in    std_logic                     := 'X';             -- hps_io_phery_usb0_NXT
			hps_io_hps_io_phery_uart1_RX             : in    std_logic                     := 'X';             -- hps_io_phery_uart1_RX
			hps_io_hps_io_phery_uart1_TX             : out   std_logic;                                        -- hps_io_phery_uart1_TX
			hps_io_hps_io_phery_i2c0_SDA             : inout std_logic                     := 'X';             -- hps_io_phery_i2c0_SDA
			hps_io_hps_io_phery_i2c0_SCL             : inout std_logic                     := 'X';             -- hps_io_phery_i2c0_SCL
			hps_io_hps_io_gpio_gpio2_io8             : inout std_logic                     := 'X';             -- hps_io_gpio_gpio2_io8
			hps_io_hps_io_gpio_gpio2_io9             : inout std_logic                     := 'X';             -- hps_io_gpio_gpio2_io9
			hps_io_hps_io_gpio_gpio2_io10            : inout std_logic                     := 'X';             -- hps_io_gpio_gpio2_io10
			hps_io_hps_io_gpio_gpio2_io11            : inout std_logic                     := 'X';             -- hps_io_gpio_gpio2_io11
			hps_io_hps_io_gpio_gpio1_io1             : inout std_logic                     := 'X';             -- hps_io_gpio_gpio1_io1
			hps_io_hps_io_gpio_gpio1_io4             : inout std_logic                     := 'X';             -- hps_io_gpio_gpio1_io4
			issp_hps_resets_source                   : out   std_logic_vector(2 downto 0);                     -- source
			led_pio_external_connection_export       : out   std_logic_vector(1 downto 0);                     -- export
			reset_reset_n                            : in    std_logic                     := 'X'              -- reset_n
		);
	end component a10s_ghrd;

	u0 : component a10s_ghrd
		port map (
			button_pio_external_connection_export    => CONNECTED_TO_button_pio_external_connection_export,    --      button_pio_external_connection.export
			clk_100_clk                              => CONNECTED_TO_clk_100_clk,                              --                             clk_100.clk
			clock_bridge_0_in_clk_clk                => CONNECTED_TO_clock_bridge_0_in_clk_clk,                --               clock_bridge_0_in_clk.clk
			dc_fifo_0_out_data                       => CONNECTED_TO_dc_fifo_0_out_data,                       --                       dc_fifo_0_out.data
			dc_fifo_0_out_valid                      => CONNECTED_TO_dc_fifo_0_out_valid,                      --                                    .valid
			dc_fifo_0_out_ready                      => CONNECTED_TO_dc_fifo_0_out_ready,                      --                                    .ready
			dc_fifo_1_in_data                        => CONNECTED_TO_dc_fifo_1_in_data,                        --                        dc_fifo_1_in.data
			dc_fifo_1_in_valid                       => CONNECTED_TO_dc_fifo_1_in_valid,                       --                                    .valid
			dc_fifo_1_in_ready                       => CONNECTED_TO_dc_fifo_1_in_ready,                       --                                    .ready
			dipsw_pio_external_connection_export     => CONNECTED_TO_dipsw_pio_external_connection_export,     --       dipsw_pio_external_connection.export
			emif_a10_hps_mem_conduit_end_mem_ck      => CONNECTED_TO_emif_a10_hps_mem_conduit_end_mem_ck,      --        emif_a10_hps_mem_conduit_end.mem_ck
			emif_a10_hps_mem_conduit_end_mem_ck_n    => CONNECTED_TO_emif_a10_hps_mem_conduit_end_mem_ck_n,    --                                    .mem_ck_n
			emif_a10_hps_mem_conduit_end_mem_a       => CONNECTED_TO_emif_a10_hps_mem_conduit_end_mem_a,       --                                    .mem_a
			emif_a10_hps_mem_conduit_end_mem_act_n   => CONNECTED_TO_emif_a10_hps_mem_conduit_end_mem_act_n,   --                                    .mem_act_n
			emif_a10_hps_mem_conduit_end_mem_ba      => CONNECTED_TO_emif_a10_hps_mem_conduit_end_mem_ba,      --                                    .mem_ba
			emif_a10_hps_mem_conduit_end_mem_bg      => CONNECTED_TO_emif_a10_hps_mem_conduit_end_mem_bg,      --                                    .mem_bg
			emif_a10_hps_mem_conduit_end_mem_cke     => CONNECTED_TO_emif_a10_hps_mem_conduit_end_mem_cke,     --                                    .mem_cke
			emif_a10_hps_mem_conduit_end_mem_cs_n    => CONNECTED_TO_emif_a10_hps_mem_conduit_end_mem_cs_n,    --                                    .mem_cs_n
			emif_a10_hps_mem_conduit_end_mem_odt     => CONNECTED_TO_emif_a10_hps_mem_conduit_end_mem_odt,     --                                    .mem_odt
			emif_a10_hps_mem_conduit_end_mem_reset_n => CONNECTED_TO_emif_a10_hps_mem_conduit_end_mem_reset_n, --                                    .mem_reset_n
			emif_a10_hps_mem_conduit_end_mem_par     => CONNECTED_TO_emif_a10_hps_mem_conduit_end_mem_par,     --                                    .mem_par
			emif_a10_hps_mem_conduit_end_mem_alert_n => CONNECTED_TO_emif_a10_hps_mem_conduit_end_mem_alert_n, --                                    .mem_alert_n
			emif_a10_hps_mem_conduit_end_mem_dqs     => CONNECTED_TO_emif_a10_hps_mem_conduit_end_mem_dqs,     --                                    .mem_dqs
			emif_a10_hps_mem_conduit_end_mem_dqs_n   => CONNECTED_TO_emif_a10_hps_mem_conduit_end_mem_dqs_n,   --                                    .mem_dqs_n
			emif_a10_hps_mem_conduit_end_mem_dq      => CONNECTED_TO_emif_a10_hps_mem_conduit_end_mem_dq,      --                                    .mem_dq
			emif_a10_hps_mem_conduit_end_mem_dbi_n   => CONNECTED_TO_emif_a10_hps_mem_conduit_end_mem_dbi_n,   --                                    .mem_dbi_n
			emif_a10_hps_oct_conduit_end_oct_rzqin   => CONNECTED_TO_emif_a10_hps_oct_conduit_end_oct_rzqin,   --        emif_a10_hps_oct_conduit_end.oct_rzqin
			emif_a10_hps_pll_ref_clk_clock_sink_clk  => CONNECTED_TO_emif_a10_hps_pll_ref_clk_clock_sink_clk,  -- emif_a10_hps_pll_ref_clk_clock_sink.clk
			f2h_cold_reset_req_reset_n               => CONNECTED_TO_f2h_cold_reset_req_reset_n,               --                  f2h_cold_reset_req.reset_n
			f2h_debug_reset_req_reset_n              => CONNECTED_TO_f2h_debug_reset_req_reset_n,              --                 f2h_debug_reset_req.reset_n
			f2h_stm_hw_events_stm_hwevents           => CONNECTED_TO_f2h_stm_hw_events_stm_hwevents,           --                   f2h_stm_hw_events.stm_hwevents
			f2h_warm_reset_req_reset_n               => CONNECTED_TO_f2h_warm_reset_req_reset_n,               --                  f2h_warm_reset_req.reset_n
			hps_fpga_reset_reset                     => CONNECTED_TO_hps_fpga_reset_reset,                     --                      hps_fpga_reset.reset
			hps_io_hps_io_phery_emac0_TX_CLK         => CONNECTED_TO_hps_io_hps_io_phery_emac0_TX_CLK,         --                              hps_io.hps_io_phery_emac0_TX_CLK
			hps_io_hps_io_phery_emac0_TXD0           => CONNECTED_TO_hps_io_hps_io_phery_emac0_TXD0,           --                                    .hps_io_phery_emac0_TXD0
			hps_io_hps_io_phery_emac0_TXD1           => CONNECTED_TO_hps_io_hps_io_phery_emac0_TXD1,           --                                    .hps_io_phery_emac0_TXD1
			hps_io_hps_io_phery_emac0_TXD2           => CONNECTED_TO_hps_io_hps_io_phery_emac0_TXD2,           --                                    .hps_io_phery_emac0_TXD2
			hps_io_hps_io_phery_emac0_TXD3           => CONNECTED_TO_hps_io_hps_io_phery_emac0_TXD3,           --                                    .hps_io_phery_emac0_TXD3
			hps_io_hps_io_phery_emac0_RX_CTL         => CONNECTED_TO_hps_io_hps_io_phery_emac0_RX_CTL,         --                                    .hps_io_phery_emac0_RX_CTL
			hps_io_hps_io_phery_emac0_TX_CTL         => CONNECTED_TO_hps_io_hps_io_phery_emac0_TX_CTL,         --                                    .hps_io_phery_emac0_TX_CTL
			hps_io_hps_io_phery_emac0_RX_CLK         => CONNECTED_TO_hps_io_hps_io_phery_emac0_RX_CLK,         --                                    .hps_io_phery_emac0_RX_CLK
			hps_io_hps_io_phery_emac0_RXD0           => CONNECTED_TO_hps_io_hps_io_phery_emac0_RXD0,           --                                    .hps_io_phery_emac0_RXD0
			hps_io_hps_io_phery_emac0_RXD1           => CONNECTED_TO_hps_io_hps_io_phery_emac0_RXD1,           --                                    .hps_io_phery_emac0_RXD1
			hps_io_hps_io_phery_emac0_RXD2           => CONNECTED_TO_hps_io_hps_io_phery_emac0_RXD2,           --                                    .hps_io_phery_emac0_RXD2
			hps_io_hps_io_phery_emac0_RXD3           => CONNECTED_TO_hps_io_hps_io_phery_emac0_RXD3,           --                                    .hps_io_phery_emac0_RXD3
			hps_io_hps_io_phery_emac0_MDIO           => CONNECTED_TO_hps_io_hps_io_phery_emac0_MDIO,           --                                    .hps_io_phery_emac0_MDIO
			hps_io_hps_io_phery_emac0_MDC            => CONNECTED_TO_hps_io_hps_io_phery_emac0_MDC,            --                                    .hps_io_phery_emac0_MDC
			hps_io_hps_io_phery_sdmmc_CMD            => CONNECTED_TO_hps_io_hps_io_phery_sdmmc_CMD,            --                                    .hps_io_phery_sdmmc_CMD
			hps_io_hps_io_phery_sdmmc_D0             => CONNECTED_TO_hps_io_hps_io_phery_sdmmc_D0,             --                                    .hps_io_phery_sdmmc_D0
			hps_io_hps_io_phery_sdmmc_D1             => CONNECTED_TO_hps_io_hps_io_phery_sdmmc_D1,             --                                    .hps_io_phery_sdmmc_D1
			hps_io_hps_io_phery_sdmmc_D2             => CONNECTED_TO_hps_io_hps_io_phery_sdmmc_D2,             --                                    .hps_io_phery_sdmmc_D2
			hps_io_hps_io_phery_sdmmc_D3             => CONNECTED_TO_hps_io_hps_io_phery_sdmmc_D3,             --                                    .hps_io_phery_sdmmc_D3
			hps_io_hps_io_phery_sdmmc_CCLK           => CONNECTED_TO_hps_io_hps_io_phery_sdmmc_CCLK,           --                                    .hps_io_phery_sdmmc_CCLK
			hps_io_hps_io_phery_usb0_DATA0           => CONNECTED_TO_hps_io_hps_io_phery_usb0_DATA0,           --                                    .hps_io_phery_usb0_DATA0
			hps_io_hps_io_phery_usb0_DATA1           => CONNECTED_TO_hps_io_hps_io_phery_usb0_DATA1,           --                                    .hps_io_phery_usb0_DATA1
			hps_io_hps_io_phery_usb0_DATA2           => CONNECTED_TO_hps_io_hps_io_phery_usb0_DATA2,           --                                    .hps_io_phery_usb0_DATA2
			hps_io_hps_io_phery_usb0_DATA3           => CONNECTED_TO_hps_io_hps_io_phery_usb0_DATA3,           --                                    .hps_io_phery_usb0_DATA3
			hps_io_hps_io_phery_usb0_DATA4           => CONNECTED_TO_hps_io_hps_io_phery_usb0_DATA4,           --                                    .hps_io_phery_usb0_DATA4
			hps_io_hps_io_phery_usb0_DATA5           => CONNECTED_TO_hps_io_hps_io_phery_usb0_DATA5,           --                                    .hps_io_phery_usb0_DATA5
			hps_io_hps_io_phery_usb0_DATA6           => CONNECTED_TO_hps_io_hps_io_phery_usb0_DATA6,           --                                    .hps_io_phery_usb0_DATA6
			hps_io_hps_io_phery_usb0_DATA7           => CONNECTED_TO_hps_io_hps_io_phery_usb0_DATA7,           --                                    .hps_io_phery_usb0_DATA7
			hps_io_hps_io_phery_usb0_CLK             => CONNECTED_TO_hps_io_hps_io_phery_usb0_CLK,             --                                    .hps_io_phery_usb0_CLK
			hps_io_hps_io_phery_usb0_STP             => CONNECTED_TO_hps_io_hps_io_phery_usb0_STP,             --                                    .hps_io_phery_usb0_STP
			hps_io_hps_io_phery_usb0_DIR             => CONNECTED_TO_hps_io_hps_io_phery_usb0_DIR,             --                                    .hps_io_phery_usb0_DIR
			hps_io_hps_io_phery_usb0_NXT             => CONNECTED_TO_hps_io_hps_io_phery_usb0_NXT,             --                                    .hps_io_phery_usb0_NXT
			hps_io_hps_io_phery_uart1_RX             => CONNECTED_TO_hps_io_hps_io_phery_uart1_RX,             --                                    .hps_io_phery_uart1_RX
			hps_io_hps_io_phery_uart1_TX             => CONNECTED_TO_hps_io_hps_io_phery_uart1_TX,             --                                    .hps_io_phery_uart1_TX
			hps_io_hps_io_phery_i2c0_SDA             => CONNECTED_TO_hps_io_hps_io_phery_i2c0_SDA,             --                                    .hps_io_phery_i2c0_SDA
			hps_io_hps_io_phery_i2c0_SCL             => CONNECTED_TO_hps_io_hps_io_phery_i2c0_SCL,             --                                    .hps_io_phery_i2c0_SCL
			hps_io_hps_io_gpio_gpio2_io8             => CONNECTED_TO_hps_io_hps_io_gpio_gpio2_io8,             --                                    .hps_io_gpio_gpio2_io8
			hps_io_hps_io_gpio_gpio2_io9             => CONNECTED_TO_hps_io_hps_io_gpio_gpio2_io9,             --                                    .hps_io_gpio_gpio2_io9
			hps_io_hps_io_gpio_gpio2_io10            => CONNECTED_TO_hps_io_hps_io_gpio_gpio2_io10,            --                                    .hps_io_gpio_gpio2_io10
			hps_io_hps_io_gpio_gpio2_io11            => CONNECTED_TO_hps_io_hps_io_gpio_gpio2_io11,            --                                    .hps_io_gpio_gpio2_io11
			hps_io_hps_io_gpio_gpio1_io1             => CONNECTED_TO_hps_io_hps_io_gpio_gpio1_io1,             --                                    .hps_io_gpio_gpio1_io1
			hps_io_hps_io_gpio_gpio1_io4             => CONNECTED_TO_hps_io_hps_io_gpio_gpio1_io4,             --                                    .hps_io_gpio_gpio1_io4
			issp_hps_resets_source                   => CONNECTED_TO_issp_hps_resets_source,                   --                     issp_hps_resets.source
			led_pio_external_connection_export       => CONNECTED_TO_led_pio_external_connection_export,       --         led_pio_external_connection.export
			reset_reset_n                            => CONNECTED_TO_reset_reset_n                             --                               reset.reset_n
		);

