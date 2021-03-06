--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.1
--  \   \         Application : sch2hdl
--  /   /         Filename : tmp.vhf
-- /___/   /\     Timestamp : 05/08/2015 21:06:22
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/My_Designs/procesadorUSB/UCISE/tmp.vhf -w C:/My_Designs/procesadorUSB/UCISE/tmp.sch
--Design Name: tmp
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity tmp is
   port ( btn     : in    std_logic; 
          clk     : in    std_logic; 
          dataUSB : in    std_logic_vector (7 downto 0); 
          rst     : in    std_logic; 
          rxf     : in    std_logic; 
          txe     : in    std_logic; 
          leds    : out   std_logic_vector (7 downto 0); 
          rd      : out   std_logic);
end tmp;

architecture BEHAVIORAL of tmp is
   attribute INIT_00             : string ;
   attribute INIT_01             : string ;
   attribute INIT_02             : string ;
   attribute INIT_03             : string ;
   attribute INIT_04             : string ;
   attribute INIT_05             : string ;
   attribute INIT_06             : string ;
   attribute INIT_07             : string ;
   attribute INIT_08             : string ;
   attribute INIT_09             : string ;
   attribute INIT_0A             : string ;
   attribute INIT_0B             : string ;
   attribute INIT_0C             : string ;
   attribute INIT_0D             : string ;
   attribute INIT_0E             : string ;
   attribute INIT_0F             : string ;
   attribute INIT_10             : string ;
   attribute INIT_11             : string ;
   attribute INIT_12             : string ;
   attribute INIT_13             : string ;
   attribute INIT_14             : string ;
   attribute INIT_15             : string ;
   attribute INIT_16             : string ;
   attribute INIT_17             : string ;
   attribute INIT_18             : string ;
   attribute INIT_19             : string ;
   attribute INIT_1A             : string ;
   attribute INIT_1B             : string ;
   attribute INIT_1C             : string ;
   attribute INIT_1D             : string ;
   attribute INIT_1E             : string ;
   attribute INIT_1F             : string ;
   attribute INIT_20             : string ;
   attribute INIT_21             : string ;
   attribute INIT_22             : string ;
   attribute INIT_23             : string ;
   attribute INIT_24             : string ;
   attribute INIT_25             : string ;
   attribute INIT_26             : string ;
   attribute INIT_27             : string ;
   attribute INIT_28             : string ;
   attribute INIT_29             : string ;
   attribute INIT_2A             : string ;
   attribute INIT_2B             : string ;
   attribute INIT_2C             : string ;
   attribute INIT_2D             : string ;
   attribute INIT_2E             : string ;
   attribute INIT_2F             : string ;
   attribute INIT_30             : string ;
   attribute INIT_31             : string ;
   attribute INIT_32             : string ;
   attribute INIT_33             : string ;
   attribute INIT_34             : string ;
   attribute INIT_35             : string ;
   attribute INIT_36             : string ;
   attribute INIT_37             : string ;
   attribute INIT_38             : string ;
   attribute INIT_39             : string ;
   attribute INIT_3A             : string ;
   attribute INIT_3B             : string ;
   attribute INIT_3C             : string ;
   attribute INIT_3D             : string ;
   attribute INIT_3E             : string ;
   attribute INIT_3F             : string ;
   attribute INITP_00            : string ;
   attribute INITP_01            : string ;
   attribute INITP_02            : string ;
   attribute INITP_03            : string ;
   attribute INITP_04            : string ;
   attribute INITP_05            : string ;
   attribute INITP_06            : string ;
   attribute INITP_07            : string ;
   attribute SRVAL_A             : string ;
   attribute SRVAL_B             : string ;
   attribute WRITE_MODE_A        : string ;
   attribute WRITE_MODE_B        : string ;
   attribute INIT_A              : string ;
   attribute INIT_B              : string ;
   attribute SIM_COLLISION_CHECK : string ;
   attribute BOX_TYPE            : string ;
   signal da                     : std_logic;
   signal XLXN_12                : std_logic_vector (7 downto 0);
   signal XLXN_13                : std_logic;
   signal XLXN_14                : std_logic;
   signal XLXN_15                : std_logic;
   signal XLXN_19                : std_logic;
   signal XLXN_20                : std_logic;
   signal XLXN_21                : std_logic_vector (7 downto 0);
   signal XLXN_22                : std_logic_vector (10 downto 0);
   signal XLXN_24                : std_logic_vector (15 downto 0);
   signal XLXN_26                : std_logic_vector (9 downto 0);
   signal XLXI_4_DIB_openSignal  : std_logic_vector (15 downto 0);
   signal XLXI_4_DIPA_openSignal : std_logic_vector (0 downto 0);
   signal XLXI_4_DIPB_openSignal : std_logic_vector (1 downto 0);
   component UC
      port ( clk  : in    std_logic; 
             rst  : in    std_logic; 
             P_OK : in    std_logic; 
             btn  : in    std_logic; 
             IR   : in    std_logic_vector (15 downto 0); 
             dato : out   std_logic_vector (7 downto 0); 
             PC   : out   std_logic_vector (9 downto 0));
   end component;
   
   component uart
      port ( rxf     : in    std_logic; 
             txe     : in    std_logic; 
             rd_u    : in    std_logic; 
             clk     : in    std_logic; 
             rst     : in    std_logic; 
             dataUSB : in    std_logic_vector (7 downto 0); 
             rd      : out   std_logic; 
             da      : out   std_logic; 
             dato    : out   std_logic_vector (7 downto 0));
   end component;
   
   component ucp
      port ( DA     : in    std_logic; 
             clk    : in    std_logic; 
             rst    : in    std_logic; 
             datoRX : in    std_logic_vector (7 downto 0); 
             WR     : out   std_logic; 
             P_OK   : out   std_logic; 
             RD     : out   std_logic; 
             dato   : out   std_logic_vector (7 downto 0); 
             dir    : out   std_logic_vector (10 downto 0));
   end component;
   
   component RAMB16_S9_S18
      -- synopsys translate_off
      generic( INIT_00 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_01 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_02 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_03 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_04 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_05 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_06 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_07 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_08 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_09 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_0A : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_0B : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_0C : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_0D : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_0E : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_0F : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_10 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_11 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_12 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_13 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_14 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_15 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_16 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_17 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_18 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_19 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_1A : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_1B : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_1C : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_1D : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_1E : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_1F : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_20 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_21 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_22 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_23 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_24 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_25 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_26 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_27 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_28 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_29 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_2A : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_2B : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_2C : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_2D : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_2E : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_2F : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_30 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_31 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_32 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_33 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_34 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_35 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_36 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_37 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_38 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_39 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_3A : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_3B : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_3C : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_3D : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_3E : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INIT_3F : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INITP_00 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INITP_01 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INITP_02 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INITP_03 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INITP_04 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INITP_05 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INITP_06 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               INITP_07 : bit_vector :=  
            x"0000000000000000000000000000000000000000000000000000000000000000";
               SRVAL_A : bit_vector :=  x"000";
               SRVAL_B : bit_vector :=  x"00000";
               WRITE_MODE_A : string :=  "WRITE_FIRST";
               WRITE_MODE_B : string :=  "WRITE_FIRST";
               INIT_A : bit_vector :=  x"000";
               INIT_B : bit_vector :=  x"00000";
               SIM_COLLISION_CHECK : string :=  "ALL");
      -- synopsys translate_on
      port ( ADDRA : in    std_logic_vector (10 downto 0); 
             ADDRB : in    std_logic_vector (9 downto 0); 
             CLKA  : in    std_logic; 
             CLKB  : in    std_logic; 
             DIA   : in    std_logic_vector (7 downto 0); 
             DIB   : in    std_logic_vector (15 downto 0); 
             DIPA  : in    std_logic_vector (0 downto 0); 
             DIPB  : in    std_logic_vector (1 downto 0); 
             ENA   : in    std_logic; 
             ENB   : in    std_logic; 
             SSRA  : in    std_logic; 
             SSRB  : in    std_logic; 
             WEA   : in    std_logic; 
             WEB   : in    std_logic; 
             DOA   : out   std_logic_vector (7 downto 0); 
             DOB   : out   std_logic_vector (15 downto 0); 
             DOPA  : out   std_logic_vector (0 downto 0); 
             DOPB  : out   std_logic_vector (1 downto 0));
   end component;
   attribute INIT_00 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_01 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_02 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_03 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_04 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_05 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_06 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_07 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_08 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_09 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_0A of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_0B of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_0C of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_0D of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_0E of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_0F of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_10 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_11 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_12 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_13 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_14 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_15 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_16 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_17 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_18 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_19 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_1A of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_1B of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_1C of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_1D of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_1E of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_1F of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_20 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_21 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_22 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_23 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_24 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_25 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_26 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_27 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_28 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_29 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_2A of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_2B of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_2C of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_2D of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_2E of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_2F of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_30 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_31 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_32 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_33 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_34 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_35 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_36 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_37 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_38 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_39 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_3A of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_3B of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_3C of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_3D of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_3E of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INIT_3F of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INITP_00 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INITP_01 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INITP_02 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INITP_03 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INITP_04 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INITP_05 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INITP_06 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute INITP_07 of RAMB16_S9_S18 : component is 
         "0000000000000000000000000000000000000000000000000000000000000000";
   attribute SRVAL_A of RAMB16_S9_S18 : component is "000";
   attribute SRVAL_B of RAMB16_S9_S18 : component is "00000";
   attribute WRITE_MODE_A of RAMB16_S9_S18 : component is "WRITE_FIRST";
   attribute WRITE_MODE_B of RAMB16_S9_S18 : component is "WRITE_FIRST";
   attribute INIT_A of RAMB16_S9_S18 : component is "000";
   attribute INIT_B of RAMB16_S9_S18 : component is "00000";
   attribute SIM_COLLISION_CHECK of RAMB16_S9_S18 : component is "ALL";
   attribute BOX_TYPE of RAMB16_S9_S18 : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   attribute INIT_00 of XLXI_4 : label is 
         "111111111111111111111111111111111111111111111111111111111111111";
   attribute INITP_06 of XLXI_4 : label is 
         "111111111111111111111111111111111111111111111111111111111111111";
   attribute INITP_04 of XLXI_4 : label is 
         "111111111111111111111111111111111111111111111111111111111111111";
   attribute INITP_02 of XLXI_4 : label is 
         "111111111111111111111111111111111111111111111111111111111111111";
   attribute INITP_00 of XLXI_4 : label is 
         "111111111111111111111111111111111111111111111111111111111111111";
begin
   XLXI_1 : UC
      port map (btn=>btn,
                clk=>clk,
                IR(15 downto 0)=>XLXN_24(15 downto 0),
                P_OK=>XLXN_14,
                rst=>rst,
                dato(7 downto 0)=>leds(7 downto 0),
                PC(9 downto 0)=>XLXN_26(9 downto 0));
   
   XLXI_2 : uart
      port map (clk=>clk,
                dataUSB(7 downto 0)=>dataUSB(7 downto 0),
                rd_u=>XLXN_13,
                rst=>rst,
                rxf=>rxf,
                txe=>txe,
                da=>da,
                dato(7 downto 0)=>XLXN_12(7 downto 0),
                rd=>rd);
   
   XLXI_3 : ucp
      port map (clk=>clk,
                DA=>da,
                datoRX(7 downto 0)=>XLXN_12(7 downto 0),
                rst=>rst,
                dato(7 downto 0)=>XLXN_21(7 downto 0),
                dir(10 downto 0)=>XLXN_22(10 downto 0),
                P_OK=>XLXN_14,
                RD=>XLXN_13,
                WR=>XLXN_20);
   
   XLXI_4 : RAMB16_S9_S18
   -- synopsys translate_off
   generic map( INIT_00 => 
         x"111111111111111111111111111111111111111111111111111111111111111",
            INITP_06 => 
         x"111111111111111111111111111111111111111111111111111111111111111",
            INITP_04 => 
         x"111111111111111111111111111111111111111111111111111111111111111",
            INITP_02 => 
         x"111111111111111111111111111111111111111111111111111111111111111",
            INITP_00 => 
         x"111111111111111111111111111111111111111111111111111111111111111")
   -- synopsys translate_on
      port map (ADDRA(10 downto 0)=>XLXN_22(10 downto 0),
                ADDRB(9 downto 0)=>XLXN_26(9 downto 0),
                CLKA=>clk,
                CLKB=>clk,
                DIA(7 downto 0)=>XLXN_21(7 downto 0),
                DIB(15 downto 0)=>XLXI_4_DIB_openSignal(15 downto 0),
                DIPA(0)=>XLXI_4_DIPA_openSignal(0),
                DIPB(1 downto 0)=>XLXI_4_DIPB_openSignal(1 downto 0),
                ENA=>XLXN_19,
                ENB=>XLXN_19,
                SSRA=>XLXN_15,
                SSRB=>XLXN_15,
                WEA=>XLXN_20,
                WEB=>XLXN_15,
                DOA=>open,
                DOB(15 downto 0)=>XLXN_24(15 downto 0),
                DOPA=>open,
                DOPB=>open);
   
   XLXI_5 : GND
      port map (G=>XLXN_15);
   
   XLXI_6 : VCC
      port map (P=>XLXN_19);
   
end BEHAVIORAL;


