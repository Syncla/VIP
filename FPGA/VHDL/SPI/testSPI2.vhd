--------------------------------------------------------------------------------
--
--   FileName:         spi_slave.vhd
--   Dependencies:     none
--   Design Software:  Quartus II 32-bit Version 11.1 Build 173 SJ Full Version
--
--   HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
--   WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--   PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
--   BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
--   DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
--   PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
--   BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
--   ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
--
--   Version History
--   Version 1.0 7/5/2012 Scott Larson
--     Initial Public Release
--   Version 1.1 11/27/2012 Scott Larson
--     Added an asynchronous active low reset
--
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity spi_slave is
  port (
    RESET_in    : in  std_logic;
    CLK_in      : in  std_logic;
    SPI_CLK     : in std_logic;
    SPI_SS      : in std_logic;
    SPI_MOSI    : in  std_logic;
    SPI_MISO    : out std_logic;
    SPI_DONE    : inout std_logic;
    DataToTx    : in std_logic_vector(7 downto 0);
    DataToTxLoad: in std_logic;
    DataRxd     : out std_logic_vector(7 downto 0);
	byteDone	: in std_logic
	);
end spi_slave;

architecture Behavioral of spi_slave is

    signal SCLK_latched, SCLK_old : std_logic;
    signal SS_latched, SS_old : std_logic;
    signal MOSI_latched: std_logic;
    signal TxData : std_logic_vector(7 downto 0);
    signal index: natural range 0 to 7;
    signal RxdData : std_logic_vector(7 downto 0);
	signal sending	: std_logic	:='0';
begin

 --
 -- Sync process
 --
process(CLK_in, RESET_in,SPI_SS)

 begin
    if (RESET_in = '1') then
		RxdData <=(others => '0');
		index <= 7;
		TxData <=(others => '0');
		SCLK_old <= '0';
		SCLK_latched <= '0';
		SS_old <= '0';
		SS_latched <= '0';
		SPI_DONE <= '1';
		MOSI_latched <= '0';
		--busy <='0';
    elsif( rising_edge(CLK_in) ) then
		if (byteDone = '1') then
			SPI_DONE <='0';
		end if;
		SCLK_old <= SCLK_latched;
		SCLK_latched <= SPI_CLK;
		SS_old <= SS_latched;
		SS_latched <= SPI_SS;
		MOSI_latched <= SPI_MOSI;		
		if(DataToTxLoad = '1') then
			TxData <= DataToTx;
		end if;

		
		-- Start of SPI Communication
		if (SS_old = '1' and SS_latched = '0') then
			index <= 7;
			SPI_done <= '0';
		end if;
		
		-- End of SPI Communication
		if (SS_old = '0' and SS_latched = '1') then
			index <= 7;
			--SPI_done <= '1';
		end if;
		
		if( SS_latched = '0' ) then
			-- Had a rising edge on SCK
			if(SCLK_old = '0' and SCLK_latched = '1') then
				-- Read Data
				RxdData <= RxdData(6 downto 0) & MOSI_latched;
				TxData <= TxData(6 downto 0) & '1';
				-- New Byte
				if(index = 0) then -- cycle ended
					index <= 7;
					-- Signal byte is ready to be processed
					SPI_DONE <= '1';
				else
					--SPI_DONE <= '0';
					index <= index-1;
				end if;
			end if;
		end if;
		
   end if;
   SPI_MISO <= TxData(7);
   DataRxd <= RxdData;
end process;

   --
   -- Combinational assignments
   --

	---SPI_MISO <= TxData(7);
	--DataRxd <= RxdData;

end Behavioral;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mypll is
port(
      PACKAGEPIN: inout std_logic;
      RESET: in std_logic;
      BYPASS: in std_logic;
      PLLOUTCORE: out std_logic;
      PLLOUTGLOBAL: out std_logic;
      LOCK: out std_logic
    );
end  mypll;

architecture BEHAVIOR of mypll is
signal openwire : std_logic;
signal openwirebus : std_logic_vector (7 downto 0);
component SB_PLL40_PAD
  generic (
       		--- Feedback
		FEEDBACK_PATH	 		 : string := "SIMPLE"; -- String (simple, delay, phase_and_delay, external)
		DELAY_ADJUSTMENT_MODE_FEEDBACK 	 : string := "FIXED"; 
		DELAY_ADJUSTMENT_MODE_RELATIVE 	 : string := "FIXED"; 
		SHIFTREG_DIV_MODE 		: bit_vector(1 downto 0)	:= "00"; 	 --  0-->Divide by 4, 1-->Divide by 7, 3 -->Divide by 5	
	  	FDA_FEEDBACK 			: bit_vector(3 downto 0) 	:= "0000"; 	 --  Integer (0-15). 
		FDA_RELATIVE 			: bit_vector(3 downto 0)	:= "0000"; 	 --  Integer (0-15).
		PLLOUT_SELECT			: string := "GENCLK";

  		--- Use the spread sheet to populate the values below
		DIVF				: bit_vector(6 downto 0);  -- Determine a good default value
		DIVR				: bit_vector(3 downto 0);  -- Determine a good default value
		DIVQ				: bit_vector(2 downto 0);  -- Determine a good default value
		FILTER_RANGE			: bit_vector(2 downto 0);  -- Determine a good default value

  		--- Additional C-Bits
  		ENABLE_ICEGATE			: bit := '0';

  		--- Test Mode Parameter 
		TEST_MODE			: bit := '0';
		EXTERNAL_DIVIDE_FACTOR		: integer := 1 -- Not Used by model, Added for PLL config GUI
       );
  port (
        PACKAGEPIN		: inout std_logic;
        PLLOUTCORE		: out std_logic;		    -- PLL output to core logic
        PLLOUTGLOBAL		: out std_logic;		    -- PLL output to global network
        EXTFEEDBACK		: in std_logic;			    -- Driven by core logic
        DYNAMICDELAY		: in std_logic_vector (7 downto 0); -- Driven by core logic
        LOCK				: out std_logic;	 	    -- Output of PLL
        BYPASS			: in std_logic;			    -- Driven by core logic
        RESETB			: in std_logic;			    -- Driven by core logic
        LATCHINPUTVALUE		: in std_logic;			    -- iCEGate Signal
        -- Test Pins
        SDO			: out std_logic;				-- Output of PLL
        SDI			: in std_logic;					-- Driven by core logic
        SCLK			: in std_logic					-- Driven by core logic
       );
end component;
begin
mypll_inst: SB_PLL40_PAD
-- Fin=12, Fout=48
generic map(
             DIVR => "0000",
             DIVF => "0111111",
             DIVQ => "100",
             FILTER_RANGE => "001",
             FEEDBACK_PATH => "SIMPLE",
             DELAY_ADJUSTMENT_MODE_FEEDBACK => "FIXED",
             FDA_FEEDBACK => "0000",
             DELAY_ADJUSTMENT_MODE_RELATIVE => "FIXED",
             FDA_RELATIVE => "0000",
             SHIFTREG_DIV_MODE => "00",
             PLLOUT_SELECT => "GENCLK",
             ENABLE_ICEGATE => '0'
           )
port map(
          PACKAGEPIN => PACKAGEPIN,
          PLLOUTCORE => PLLOUTCORE,
          PLLOUTGLOBAL => PLLOUTGLOBAL,
          EXTFEEDBACK => openwire,
          DYNAMICDELAY => openwirebus,
          RESETB => RESET,
          BYPASS => BYPASS,
          LATCHINPUTVALUE => openwire,
          LOCK => LOCK,
          SDI => openwire,
          SDO => open,
          SCLK => openwire
        );

end BEHAVIOR;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
-- Speed is 10MHz
-- SPIMODE0
-- MSBFirst

ENTITY SPI_TEST_MODULE IS
	PORT(
		-- main clock
		clk		:inout		std_logic;
		
		-- SPI
		SCK		:in 	std_logic;
		MOSI	:in		std_logic;
		MISO	:out	std_logic;
		SS		:in		std_logic;
		
		-- LEDs
		LEDR	:out 	std_logic := '0'; 	-- pin 34(8A)
		LEDG	:out 	std_logic := '0' 	-- pin 43(9B)
		);

END  SPI_TEST_MODULE;

ARCHITECTURE Behavioral OF SPI_TEST_MODULE IS
	component mypll is
	port(
      PACKAGEPIN: inout std_logic;
      RESET: in std_logic;
      BYPASS: in std_logic;
      PLLOUTCORE: out std_logic;
      PLLOUTGLOBAL: out std_logic;
      LOCK: out std_logic
    );
	end component mypll;
	
	component spi_slave is
	port (
	RESET_in	: in std_logic;
	CLK_in      : in  std_logic;
    SPI_CLK     : in std_logic;
    SPI_SS      : in std_logic;
    SPI_MOSI    : in  std_logic;
    SPI_MISO    : out std_logic;
    SPI_DONE    : out std_logic;
    DataToTx    : in std_logic_vector(7 downto 0);
    DataToTxLoad: in std_logic;
    DataRxd     : out std_logic_vector(7 downto 0);
	byteDone	: in std_logic
	);
	end component spi_slave;
	
	--Signals for the SPI Slave
	signal rx			:	std_logic_vector(7 downto 0):= (others => '0');
	-- Transmitted data
	signal tx			: 	std_logic_vector(7 downto 0):= (others=> '0');
	signal reset_in		:	std_logic:='0';
	signal sendData		:	std_logic :='0';
	signal done			:	std_logic :='0';
	signal byteDone		:	std_logic :='0';
	-- PLL Vars
	signal	global  : std_logic;
	signal	reset   : std_logic :='1';
	signal	bypass  : std_logic :='0';
	signal 	lock	: std_logic :='0';
	signal 	outclk	: std_logic :='0';
	
	begin
	-- Create the 48 MHz clock
	mypll_inst: mypll port map(
	PACKAGEPIN => clk,
	PLLOUTCORE => outclk,
	PLLOUTGLOBAL => global,
	RESET => reset,
	BYPASS => bypass,
	LOCK => lock);
	
	-- Create the SPI Slave
	spi: spi_slave port map(
		RESET_in=>reset_in,
		CLK_in=>outclk,
		SPI_CLK=>SCK,
		SPI_SS=>SS,
		SPI_MOSI=>MOSI,
		SPI_MISO=>MISO,
		DataToTx=>tx,
		DataToTxLoad=>sendData,
		DataRxd=>rx,
		SPI_DONE=>done,
		byteDone=>byteDone);
	
	process(outclk)
		BEGIN
		if (rising_edge(outclk)) then
			if (done='1') then
				byteDone <='1';
				tx<=rx;
				sendData<='1';
				if (rx(0)='1') then
					LEDG <= '1';
				else
					LEDG <= '0';
				end if;
			else
				byteDone <= '0';
				sendData<='0';
			end if;
			LEDR<=done;
			
		end if;
	end process;
	
end Behavioral;