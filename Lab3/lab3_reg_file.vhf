--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : lab3_reg_file.vhf
-- /___/   /\     Timestamp : 08/19/2017 17:59:42
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family artix7 -flat -suppress -vhdl /home/btech/cs1160345/lab3_reg_file/lab3_reg_file.vhf -w /home/btech/cs1160345/lab3_reg_file/lab3_reg_file.sch
--Design Name: lab3_reg_file
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M8_1E_HXILINX_lab3_reg_file -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M8_1E_HXILINX_lab3_reg_file is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    D2  : in std_logic;
    D3  : in std_logic;
    D4  : in std_logic;
    D5  : in std_logic;
    D6  : in std_logic;
    D7  : in std_logic;
    E   : in std_logic;
    S0  : in std_logic;
    S1  : in std_logic;
    S2  : in std_logic
  );
end M8_1E_HXILINX_lab3_reg_file;

architecture M8_1E_HXILINX_lab3_reg_file_V of M8_1E_HXILINX_lab3_reg_file is
begin
  process (D0, D1, D2, D3, D4, D5, D6, D7, E, S0, S1, S2)
  variable sel : std_logic_vector(2 downto 0);
  begin
    sel := S2&S1&S0;
    if( E = '0') then
    O <= '0';
    else
      case sel is
      when "000" => O <= D0;
      when "001" => O <= D1;
      when "010" => O <= D2;
      when "011" => O <= D3;
      when "100" => O <= D4;
      when "101" => O <= D5;
      when "110" => O <= D6;
      when "111" => O <= D7;
      when others => NULL;
      end case;
    end if;
    end process; 
end M8_1E_HXILINX_lab3_reg_file_V;
----- CELL D3_8E_HXILINX_lab3_reg_file -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D3_8E_HXILINX_lab3_reg_file is
  
port(
    D0  : out std_logic;
    D1  : out std_logic;
    D2  : out std_logic;
    D3  : out std_logic;
    D4  : out std_logic;
    D5  : out std_logic;
    D6  : out std_logic;
    D7  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    A2  : in std_logic;
    E   : in std_logic
  );
end D3_8E_HXILINX_lab3_reg_file;

architecture D3_8E_HXILINX_lab3_reg_file_V of D3_8E_HXILINX_lab3_reg_file is
  signal d_tmp : std_logic_vector(7 downto 0);
begin
  process (A0, A1, A2, E)
  variable sel   : std_logic_vector(2 downto 0);
  begin
    sel := A2&A1&A0;
    if( E = '0') then
    d_tmp <= "00000000";
    else
      case sel is
      when "000" => d_tmp <= "00000001";
      when "001" => d_tmp <= "00000010";
      when "010" => d_tmp <= "00000100";
      when "011" => d_tmp <= "00001000";
      when "100" => d_tmp <= "00010000";
      when "101" => d_tmp <= "00100000";
      when "110" => d_tmp <= "01000000";
      when "111" => d_tmp <= "10000000";
      when others => NULL;
      end case;
    end if;
  end process; 

    D7 <= d_tmp(7);
    D6 <= d_tmp(6);
    D5 <= d_tmp(5);
    D4 <= d_tmp(4);
    D3 <= d_tmp(3);
    D2 <= d_tmp(2);
    D1 <= d_tmp(1);
    D0 <= d_tmp(0);

end D3_8E_HXILINX_lab3_reg_file_V;
----- CELL M2_1_HXILINX_lab3_reg_file -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_lab3_reg_file is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_lab3_reg_file;

architecture M2_1_HXILINX_lab3_reg_file_V of M2_1_HXILINX_lab3_reg_file is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_lab3_reg_file_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity dimux_MUSER_lab3_reg_file is
   port ( mode : in    std_logic; 
          swin : in    std_logic_vector (3 downto 0); 
          xin  : in    std_logic_vector (3 downto 0); 
          wrin : out   std_logic_vector (3 downto 0));
end dimux_MUSER_lab3_reg_file;

architecture BEHAVIORAL of dimux_MUSER_lab3_reg_file is
   attribute HU_SET     : string ;
   component M2_1_HXILINX_lab3_reg_file
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_1";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_2";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_3";
begin
   XLXI_1 : M2_1_HXILINX_lab3_reg_file
      port map (D0=>swin(0),
                D1=>xin(0),
                S0=>mode,
                O=>wrin(0));
   
   XLXI_2 : M2_1_HXILINX_lab3_reg_file
      port map (D0=>swin(1),
                D1=>xin(1),
                S0=>mode,
                O=>wrin(1));
   
   XLXI_3 : M2_1_HXILINX_lab3_reg_file
      port map (D0=>swin(2),
                D1=>xin(2),
                S0=>mode,
                O=>wrin(2));
   
   XLXI_4 : M2_1_HXILINX_lab3_reg_file
      port map (D0=>swin(3),
                D1=>xin(3),
                S0=>mode,
                O=>wrin(3));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity multimux_MUSER_lab3_reg_file is
   port ( address : in    std_logic_vector (2 downto 0); 
          reg1    : in    std_logic_vector (3 downto 0); 
          reg2    : in    std_logic_vector (3 downto 0); 
          reg3    : in    std_logic_vector (3 downto 0); 
          reg4    : in    std_logic_vector (3 downto 0); 
          reg5    : in    std_logic_vector (3 downto 0); 
          reg6    : in    std_logic_vector (3 downto 0); 
          reg7    : in    std_logic_vector (3 downto 0); 
          reg8    : in    std_logic_vector (3 downto 0); 
          x       : in    std_logic; 
          rd0     : out   std_logic; 
          rd1     : out   std_logic; 
          rd2     : out   std_logic; 
          rd3     : out   std_logic);
end multimux_MUSER_lab3_reg_file;

architecture BEHAVIORAL of multimux_MUSER_lab3_reg_file is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_76 : std_logic;
   component M8_1E_HXILINX_lab3_reg_file
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             D4 : in    std_logic; 
             D5 : in    std_logic; 
             D6 : in    std_logic; 
             D7 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             S2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component OR2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2B1 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_7 : label is "XLXI_7_4";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_5";
   attribute HU_SET of XLXI_9 : label is "XLXI_9_6";
   attribute HU_SET of XLXI_10 : label is "XLXI_10_7";
begin
   XLXI_7 : M8_1E_HXILINX_lab3_reg_file
      port map (D0=>reg1(0),
                D1=>reg2(0),
                D2=>reg3(0),
                D3=>reg4(0),
                D4=>reg5(0),
                D5=>reg6(0),
                D6=>reg7(0),
                D7=>reg8(0),
                E=>XLXN_76,
                S0=>address(0),
                S1=>address(1),
                S2=>address(2),
                O=>rd0);
   
   XLXI_8 : M8_1E_HXILINX_lab3_reg_file
      port map (D0=>reg1(1),
                D1=>reg2(1),
                D2=>reg3(1),
                D3=>reg4(1),
                D4=>reg5(1),
                D5=>reg6(1),
                D6=>reg7(1),
                D7=>reg8(1),
                E=>XLXN_76,
                S0=>address(0),
                S1=>address(1),
                S2=>address(2),
                O=>rd1);
   
   XLXI_9 : M8_1E_HXILINX_lab3_reg_file
      port map (D0=>reg1(2),
                D1=>reg2(2),
                D2=>reg3(2),
                D3=>reg4(2),
                D4=>reg5(2),
                D5=>reg6(2),
                D6=>reg7(2),
                D7=>reg8(2),
                E=>XLXN_76,
                S0=>address(0),
                S1=>address(1),
                S2=>address(2),
                O=>rd2);
   
   XLXI_10 : M8_1E_HXILINX_lab3_reg_file
      port map (D0=>reg1(3),
                D1=>reg2(3),
                D2=>reg3(3),
                D3=>reg4(3),
                D4=>reg5(3),
                D5=>reg6(3),
                D6=>reg7(3),
                D7=>reg8(3),
                E=>XLXN_76,
                S0=>address(0),
                S1=>address(1),
                S2=>address(2),
                O=>rd3);
   
   XLXI_11 : OR2B1
      port map (I0=>x,
                I1=>x,
                O=>XLXN_76);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Registermine_MUSER_lab3_reg_file is
   port ( clock : in    std_logic; 
          wr    : in    std_logic_vector (3 downto 0); 
          rd    : out   std_logic_vector (3 downto 0));
end Registermine_MUSER_lab3_reg_file;

architecture BEHAVIORAL of Registermine_MUSER_lab3_reg_file is
   attribute BOX_TYPE   : string ;
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
begin
   XLXI_1 : FD
      port map (C=>clock,
                D=>wr(0),
                Q=>rd(0));
   
   XLXI_2 : FD
      port map (C=>clock,
                D=>wr(1),
                Q=>rd(1));
   
   XLXI_3 : FD
      port map (C=>clock,
                D=>wr(2),
                Q=>rd(2));
   
   XLXI_4 : FD
      port map (C=>clock,
                D=>wr(3),
                Q=>rd(3));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity lab3_reg_file is
   port ( clock              : in    std_logic; 
          mode               : in    std_logic; 
          rd_addr1           : in    std_logic_vector (2 downto 0); 
          rd_addr2           : in    std_logic_vector (2 downto 0); 
          write_enable       : in    std_logic; 
          wr_addr            : in    std_logic_vector (2 downto 0); 
          wr_data            : in    std_logic_vector (3 downto 0); 
          rd_data1           : out   std_logic_vector (3 downto 0); 
          rd_data1_xor_data2 : out   std_logic_vector (3 downto 0); 
          rd_data2           : out   std_logic_vector (3 downto 0));
end lab3_reg_file;

architecture BEHAVIORAL of lab3_reg_file is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_18                  : std_logic;
   signal XLXN_34                  : std_logic_vector (3 downto 0);
   signal XLXN_35                  : std_logic_vector (3 downto 0);
   signal XLXN_36                  : std_logic_vector (3 downto 0);
   signal XLXN_38                  : std_logic_vector (3 downto 0);
   signal XLXN_39                  : std_logic_vector (3 downto 0);
   signal XLXN_40                  : std_logic_vector (3 downto 0);
   signal XLXN_41                  : std_logic_vector (3 downto 0);
   signal XLXN_73                  : std_logic_vector (3 downto 0);
   signal XLXN_88                  : std_logic;
   signal XLXN_101                 : std_logic;
   signal XLXN_102                 : std_logic;
   signal XLXN_103                 : std_logic;
   signal XLXN_104                 : std_logic;
   signal XLXN_105                 : std_logic;
   signal XLXN_106                 : std_logic;
   signal XLXN_107                 : std_logic;
   signal XLXN_141                 : std_logic_vector (3 downto 0);
   signal XLXN_148                 : std_logic;
   signal XLXN_149                 : std_logic;
   signal rd_data1_DUMMY           : std_logic_vector (3 downto 0);
   signal rd_data2_DUMMY           : std_logic_vector (3 downto 0);
   signal rd_data1_xor_data2_DUMMY : std_logic_vector (3 downto 0);
   component D3_8E_HXILINX_lab3_reg_file
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             E  : in    std_logic; 
             D0 : out   std_logic; 
             D1 : out   std_logic; 
             D2 : out   std_logic; 
             D3 : out   std_logic; 
             D4 : out   std_logic; 
             D5 : out   std_logic; 
             D6 : out   std_logic; 
             D7 : out   std_logic);
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component multimux_MUSER_lab3_reg_file
      port ( x       : in    std_logic; 
             reg8    : in    std_logic_vector (3 downto 0); 
             reg7    : in    std_logic_vector (3 downto 0); 
             reg6    : in    std_logic_vector (3 downto 0); 
             reg5    : in    std_logic_vector (3 downto 0); 
             reg4    : in    std_logic_vector (3 downto 0); 
             reg3    : in    std_logic_vector (3 downto 0); 
             reg2    : in    std_logic_vector (3 downto 0); 
             reg1    : in    std_logic_vector (3 downto 0); 
             rd3     : out   std_logic; 
             rd2     : out   std_logic; 
             rd1     : out   std_logic; 
             rd0     : out   std_logic; 
             address : in    std_logic_vector (2 downto 0));
   end component;
   
   component Registermine_MUSER_lab3_reg_file
      port ( clock : in    std_logic; 
             rd    : out   std_logic_vector (3 downto 0); 
             wr    : in    std_logic_vector (3 downto 0));
   end component;
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component dimux_MUSER_lab3_reg_file
      port ( mode : in    std_logic; 
             swin : in    std_logic_vector (3 downto 0); 
             wrin : out   std_logic_vector (3 downto 0); 
             xin  : in    std_logic_vector (3 downto 0));
   end component;
   
   attribute HU_SET of XLXI_13 : label is "XLXI_13_8";
begin
   XLXN_148 <= '1';
   XLXN_149 <= '1';
   rd_data1(3 downto 0) <= rd_data1_DUMMY(3 downto 0);
   rd_data1_xor_data2(3 downto 0) <= rd_data1_xor_data2_DUMMY(3 downto 0);
   rd_data2(3 downto 0) <= rd_data2_DUMMY(3 downto 0);
   XLXI_13 : D3_8E_HXILINX_lab3_reg_file
      port map (A0=>wr_addr(0),
                A1=>wr_addr(1),
                A2=>wr_addr(2),
                E=>XLXN_18,
                D0=>XLXN_88,
                D1=>XLXN_107,
                D2=>XLXN_106,
                D3=>XLXN_105,
                D4=>XLXN_104,
                D5=>XLXN_103,
                D6=>XLXN_102,
                D7=>XLXN_101);
   
   XLXI_15 : AND2
      port map (I0=>write_enable,
                I1=>clock,
                O=>XLXN_18);
   
   XLXI_25 : multimux_MUSER_lab3_reg_file
      port map (address(2 downto 0)=>rd_addr1(2 downto 0),
                reg1(3 downto 0)=>XLXN_34(3 downto 0),
                reg2(3 downto 0)=>XLXN_35(3 downto 0),
                reg3(3 downto 0)=>XLXN_36(3 downto 0),
                reg4(3 downto 0)=>XLXN_73(3 downto 0),
                reg5(3 downto 0)=>XLXN_38(3 downto 0),
                reg6(3 downto 0)=>XLXN_39(3 downto 0),
                reg7(3 downto 0)=>XLXN_40(3 downto 0),
                reg8(3 downto 0)=>XLXN_41(3 downto 0),
                x=>XLXN_149,
                rd0=>rd_data1_DUMMY(0),
                rd1=>rd_data1_DUMMY(1),
                rd2=>rd_data1_DUMMY(2),
                rd3=>rd_data1_DUMMY(3));
   
   XLXI_27 : Registermine_MUSER_lab3_reg_file
      port map (clock=>XLXN_88,
                wr(3 downto 0)=>XLXN_141(3 downto 0),
                rd(3 downto 0)=>XLXN_34(3 downto 0));
   
   XLXI_28 : Registermine_MUSER_lab3_reg_file
      port map (clock=>XLXN_107,
                wr(3 downto 0)=>XLXN_141(3 downto 0),
                rd(3 downto 0)=>XLXN_35(3 downto 0));
   
   XLXI_29 : Registermine_MUSER_lab3_reg_file
      port map (clock=>XLXN_106,
                wr(3 downto 0)=>XLXN_141(3 downto 0),
                rd(3 downto 0)=>XLXN_36(3 downto 0));
   
   XLXI_30 : Registermine_MUSER_lab3_reg_file
      port map (clock=>XLXN_104,
                wr(3 downto 0)=>XLXN_141(3 downto 0),
                rd(3 downto 0)=>XLXN_73(3 downto 0));
   
   XLXI_31 : Registermine_MUSER_lab3_reg_file
      port map (clock=>XLXN_104,
                wr(3 downto 0)=>XLXN_141(3 downto 0),
                rd(3 downto 0)=>XLXN_38(3 downto 0));
   
   XLXI_32 : Registermine_MUSER_lab3_reg_file
      port map (clock=>XLXN_103,
                wr(3 downto 0)=>XLXN_141(3 downto 0),
                rd(3 downto 0)=>XLXN_39(3 downto 0));
   
   XLXI_33 : Registermine_MUSER_lab3_reg_file
      port map (clock=>XLXN_102,
                wr(3 downto 0)=>XLXN_141(3 downto 0),
                rd(3 downto 0)=>XLXN_40(3 downto 0));
   
   XLXI_34 : Registermine_MUSER_lab3_reg_file
      port map (clock=>XLXN_101,
                wr(3 downto 0)=>XLXN_141(3 downto 0),
                rd(3 downto 0)=>XLXN_41(3 downto 0));
   
   XLXI_35 : multimux_MUSER_lab3_reg_file
      port map (address(2 downto 0)=>rd_addr2(2 downto 0),
                reg1(3 downto 0)=>XLXN_34(3 downto 0),
                reg2(3 downto 0)=>XLXN_35(3 downto 0),
                reg3(3 downto 0)=>XLXN_36(3 downto 0),
                reg4(3 downto 0)=>XLXN_73(3 downto 0),
                reg5(3 downto 0)=>XLXN_38(3 downto 0),
                reg6(3 downto 0)=>XLXN_39(3 downto 0),
                reg7(3 downto 0)=>XLXN_40(3 downto 0),
                reg8(3 downto 0)=>XLXN_41(3 downto 0),
                x=>XLXN_148,
                rd0=>rd_data2_DUMMY(0),
                rd1=>rd_data2_DUMMY(1),
                rd2=>rd_data2_DUMMY(2),
                rd3=>rd_data2_DUMMY(3));
   
   XLXI_36 : XOR2
      port map (I0=>rd_data2_DUMMY(0),
                I1=>rd_data1_DUMMY(0),
                O=>rd_data1_xor_data2_DUMMY(0));
   
   XLXI_37 : XOR2
      port map (I0=>rd_data2_DUMMY(1),
                I1=>rd_data1_DUMMY(1),
                O=>rd_data1_xor_data2_DUMMY(1));
   
   XLXI_38 : XOR2
      port map (I0=>rd_data2_DUMMY(2),
                I1=>rd_data1_DUMMY(2),
                O=>rd_data1_xor_data2_DUMMY(2));
   
   XLXI_39 : XOR2
      port map (I0=>rd_data2_DUMMY(3),
                I1=>rd_data1_DUMMY(3),
                O=>rd_data1_xor_data2_DUMMY(3));
   
   XLXI_40 : dimux_MUSER_lab3_reg_file
      port map (mode=>mode,
                swin(3 downto 0)=>wr_data(3 downto 0),
                xin(3 downto 0)=>rd_data1_xor_data2_DUMMY(3 downto 0),
                wrin(3 downto 0)=>XLXN_141(3 downto 0));
   
end BEHAVIORAL;



