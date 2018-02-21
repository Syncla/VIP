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


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity Blink is
    port(
            led        : out    std_logic;
            ref_clk    : inout    std_logic;
			clk : out std_logic
         );
end Blink;


architecture Behavior of Blink is
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
    	signal    count    : std_logic_vector(23 downto 0);	
		signal		global : std_logic;
		signal		reset : std_logic :='1';
		signal	bypass : std_logic :='0';
		signal 	lock	: std_logic:='0';
	signal outclk	:std_logic :='0';
		begin
	
	mypll_inst: mypll port map(PACKAGEPIN => ref_clk,PLLOUTCORE => outclk,PLLOUTGLOBAL => global,RESET => reset,BYPASS => bypass,LOCK => lock);
    process(outclk)

    begin
		clk <= outclk;
        if (rising_edge(clk)) then
            if (count < 7500000) then
                count <= count + 1;
            else
                led <= not led;
                count <= 0;
            end if;
        end if;
    end process;
end Behavior;