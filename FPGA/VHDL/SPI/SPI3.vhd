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
end entity mypll;

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
-- Speed is 12MHz
-- SPIMODE0
-- MSBFirst

ENTITY spi_test IS
	PORT(
		clk		:in		std_logic;
		SCK		:in 	std_logic;
		MOSI	:in		std_logic;
		MISO	:out	std_logic;
		SS		:in		std_logic;
		LEDR	:out 	std_logic := '0'; 	-- pin 34(8A)
		LEDG	:out 	std_logic := '0' 	-- pin 43(9B)
		);

END spi_test;

ARCHITECTURE Behavioral OF spi_test IS
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
	--Signals for the SPI Slave
	-- What bit we are on (data is send 8 bits at a time)
	signal bit_count	:	std_logic_vector(2 downto 0);
	-- Have we received a full byte
	signal byte_rcvd	:	std_logic := '0';
	-- Received data
	signal rx			:	std_logic_vector(7 downto 0):= (others => '0');
	-- Transmitted data
	signal tx			: 	std_logic_vector(7 downto 0):= (others=> '0');
	-- What to do
	signal action		: 	std_logic_vector(2 downto 0):= (others => '0');
	-- Debounce
	signal 	trig	: std_logic :='0';
	
	-- PLL Vars
	signal	global  : std_logic;
	signal	reset   : std_logic :='1';
	signal	bypass  : std_logic :='0';
	signal 	lock	: std_logic:='0';
	signal 	outclk	: std_logic :='0';
	begin
	-- Create the 48 MHz clock
	mypll_inst: mypll port map(PACKAGEPIN => clk,PLLOUTCORE => outclk,PLLOUTGLOBAL => global,RESET => reset,BYPASS => bypass,LOCK => lock);
	process(outclk)
		BEGIN
		-- oversample SCK at 48MHz (SCK is 12 MHz)
		if (rising_edge(outclk)) then
			-- If the device is not selected, reset bit_count and rx 
			if (SS = '1') then
				bit_count <= 0;
				rx <=(others => '0');
			-- If the device is selected
			elsif (SS = '0') then
				-- Sample MOSI/MISO on SCK
				if (rising_edge(SCK) and trig ='0') then
					trig <= '1';
					-- Read MOSI
					if (MOSI ='1') then
						rx(to_integer(unsigned(bit_count))) <= '1';
					elsif (MOSI='0') then
						rx(to_integer(unsigned(bit_count))) <= '0';
					end if;
					
					-- Write MISO
					tx(to_integer(unsigned(bit_count)))<=rx(to_integer(unsigned(bit_count)));
					
					-- And write MISO
					MISO <= tx(to_integer(unsigned(bit_count)));
					
					-- Increment bit_count
					bit_count <= std_logic_vector(unsigned(bit_count) + 1);	
					
					-- If bit_count rolled over, then we got a full byte
					if (bit_count = "111" and byte_rcvd='0') then
						-- Got a full byte
						byte_rcvd <= '1';
					end if;
				end if;
				if falling_edge(SCK) and trig='1' then
					trig <= '0';
				end if;
			end if;
			-- Process data when a byte is available
		if (byte_rcvd = '1') then
			LEDR <='1';
			byte_rcvd <= '0';
			--if rx(0) = '1' then
			--	LEDR <='1';
			--else
			--	LEDR <='0';
			--end if;
			if (rx(7) = '1') then
				LEDG <='1';
			else
				LEDG <='0';
			end if;
			rx <=(others => '0');
			MISO <='0';
		--end if;
		elsif (byte_rcvd='0') then
			LEDR <='0';
		end if;
		end if;
		
	end process;
	
	end Behavioral;