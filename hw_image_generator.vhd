--------------------------------------------------------------------------------
--
--   FileName:         hw_image_generator.vhd
--   Dependencies:     none
--   Design Software:  Quartus II 64-bit Version 12.1 Build 177 SJ Full Version
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
--   Version 1.0 05/10/2013 Scott Larson
--     Initial Public Release
--    
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY hw_image_generator IS
	GENERIC(  
	    pixels_x :	INTEGER := 1870;    --row that first color will persist until
		 pixels_y	:	INTEGER := 1030);   --column that first color will persist until
		
	PORT(
		disp_ena		:	IN		STD_LOGIC;	--display enable ('1' = display time, '0' = blanking time)
		clk	      :	IN		STD_LOGIC;
		reset1	   :	IN		STD_LOGIC;
		keypjump		:	IN		STD_LOGIC;
		row			:	IN		INTEGER;		--row pixel coordinate
		column		:	IN		INTEGER;		--column pixel coordinate
		red			:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --red magnitude output to DAC
		green			:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --green magnitude output to DAC
		blue			:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0'); --blue magnitude output to DAC
		LEDRand     :  out   std_logic_vector(0 to 6);
		LEDRand1     :  out   std_logic_vector(0 to 6);
		LEDRand2    :  out   std_logic_vector(0 to 6));
END hw_image_generator;

ARCHITECTURE behavior OF hw_image_generator IS
shared variable back1 :	INTEGER := 1080;    --row that first color will persist until
shared variable back2:	INTEGER := 1030;   --column that first color will persist until
shared variable back3:	INTEGER := 1920;

shared variable b_x1 :	INTEGER := 100;    --row that first color will persist until
shared variable b_y1:	INTEGER := 870;   --column that first color will persist until
shared variable b_y2:	INTEGER := 1030;
shared variable b_x2 :	INTEGER := 200;

shared variable a_x1 :	INTEGER := 500;    --row that first color will persist until
shared variable a_y1:	INTEGER := 930;   --column that first color will persist until
shared variable a_y2:	INTEGER := 1030;
shared variable a_x2 :	INTEGER := 600;

shared variable c_x1 :	INTEGER := 1200;    --row that first color will persist until
shared variable c_y1:	INTEGER := 900;   --column that first color will persist until
shared variable c_y2:	INTEGER := 1030;
shared variable c_x2 :	INTEGER := 1300;

shared variable d_x1 :	INTEGER := 1800;    --row that first color will persist until
shared variable d_y1:	INTEGER := 930;   --column that first color will persist until
shared variable d_y2:	INTEGER := 1030;
shared variable d_x2 :	INTEGER := 1900;

shared variable r_y1:	INTEGER := 150;
shared variable r_x2 :	INTEGER := 800;
shared variable r_y2:	INTEGER := 175;
shared variable r_x1 :	INTEGER := 0;

shared variable n_y1:	INTEGER := 125;
shared variable n_x2 :	INTEGER := 25;
shared variable n_y2:	INTEGER := 150;
shared variable n_x1 :	INTEGER := 0;
--!!!
shared variable e_y1:	INTEGER := 600;
shared variable e_x2 :	INTEGER := 960;
shared variable e_y2:	INTEGER := 900;
shared variable e_x1 :	INTEGER := 910;

shared variable f_y1:	INTEGER := 500;
shared variable f_x2 :	INTEGER := 960;
shared variable f_y2:	INTEGER := 550;
shared variable f_x1 :	INTEGER := 910;

shared variable g_y1:	INTEGER := 600;
shared variable g_x2 :	INTEGER := 810;
shared variable g_y2:	INTEGER := 900;
shared variable g_x1 :	INTEGER := 860;

shared variable h_y1:	INTEGER := 500;
shared variable h_x2 :	INTEGER := 810;
shared variable h_y2:	INTEGER := 550;
shared variable h_x1 :	INTEGER := 860;

shared variable i_y1:	INTEGER := 600;
shared variable i_x2 :	INTEGER := 600;
shared variable i_y2:	INTEGER := 900;
shared variable i_x1 :	INTEGER := 300;

shared variable j_y1:	INTEGER := 125;
shared variable j_x2 :	INTEGER := 25;
shared variable j_y2:	INTEGER := 150;
shared variable j_x1 :	INTEGER := 0;




shared variable number :	INTEGER := 1;
signal counter3 : std_logic_vector(24 downto 0);
signal counter1 : std_logic_vector(24 downto 0); 
signal counter2 : std_logic_vector(3 downto 0); 
signal timer1 : std_logic_vector(4 downto 0);
signal gameover : std_logic := '0';
signal endgame : std_logic := '0';
signal endgame2 : std_logic := '0';

BEGIN
	PROCESS(disp_ena, row, column)
	BEGIn
	counter3 <= "0000010111110101111000010";
	  if clk'event and clk = '1' and endgame = '0' and  endgame2 = '0'then 
		  if counter1 < "0000010111110101111000010"  then  
         counter1 <= counter1 + 1 ;	
			timer1  <= timer1 + 1 ;
         else
			   if (keypjump = '0' and b_y2 >700) then 
				b_y1 := b_y1-6;
				b_y2 := b_y2-6;	
	else			
				b_y2 := 1030;
				b_y1 := 930;
				
				end if;
				
            counter1 <= (others => '0');
				a_x1 := a_x1-9;
		      a_x2 := a_x2-9;
				c_x1:=c_x1-9;
			   c_x2:=c_x2-9;
				d_x1:=d_x1-9;
			   d_x2:=d_x2-9;
				n_x1:=n_x1+1;
				n_x2:=n_x2+1;
				--a_x1 := a_x1-9;
		      --a_x2 := a_x2-9;
				--c_x1:=c_x1-7;
			   --c_x2:=c_x2-7;
				--d_x1:=d_x1-5;
			   --d_x2:=d_x2-5;
			if a_x1 < 100 then
			a_x1:=1800;
			a_x2:=1900;
			counter2 <= counter2+1;
			end if;
			if c_x1 < 100 then
			c_x1:=1800;
			c_x2:=1900;
			counter2 <= counter2+1;
			end if;
			if d_x1 < 100 then
			d_x1:=1790;
			d_x2:=1890;
			counter2 <= counter2+1;
			end if;
			
	      
		
				end if;
         end if;
	
       if counter2 = "0000"
		 then LEDRand <= "0000001";--0
		 elsif counter2 = "0001"
		 then LEDRand <= "1001111";--1
		 elsif counter2 = "0010"
		 then LEDRand <= "0010010";--2
		 elsif counter2 = "0011"
		 then LEDRand <= "0000110";--3
		 elsif counter2 = "0100"
		 then LEDRand <= "1001100";--4
		 elsif counter2 = "0101"
		 then LEDRand <= "0100100";--5
		 elsif counter2 = "0110"
		 then LEDRand <= "0100000";--6
		 elsif counter2 = "0111"
		 then LEDRand <= "0001111";--7
		 elsif counter2 = "1000"
		 then LEDRand <= "0000000";--8
		 elsif counter2 = "1001"
		 then LEDRand <= "0001100";--9
		 elsif counter2 = "1010"
		 then LEDRand <= "0001000";--10
		 elsif counter2 = "1011"
		 then LEDRand <= "1100000";--11
		 elsif counter2 = "1100"
		 then LEDRand <= "0110001";--12
		 elsif counter2 = "1101"
		 then LEDRand <= "1000010";--13
       elsif counter2 = "1110"
		 then LEDRand <= "0110000";--14
		 elsif counter2 = "1111"
		 then LEDRand <= "0111000";--15
		 
		 else LEDRand <= "1111111";
		end if;
	
		
	 if ((b_x2 >= a_x1) and (b_y2 >= a_y1 )) then
	  gameover<= '1';
	  endgame <= '1';
	  
	  elsif ((b_x2 >= c_x1) and (b_y2 >= c_y1 )) then
	  gameover<= '1';
	  endgame <= '1';
	  elsif ((b_x2 >= d_x1) and (b_y2 >= d_y1 )) then
	  gameover<= '1';
	  endgame <= '1';
	  else
	  gameover <='0';
	  
	  end if;
	  if (gameover= '1' and reset1= '1' ) then
	  back2 := 0;
	  endgame <= '1';
	  n_x1 := 0;  
	  n_x2 := 25;
	  elsif (reset1 = '1' and (n_x2 >= r_x2)) then
	  endgame2 <= '1';
	  else 
	  endgame2 <= '0';
	  back2 := 1030;
	  endgame <= '0';
	  end if;


	 

		IF(disp_ena = '1') THEN		--display time
			IF(row < back1 and row > back2 AND column < back3) THEN
				red <= (OTHERS => '0');
				green	<= (OTHERS => '1');
				blue <= (OTHERS => '0');
		elsIF(row < b_y2 and row > b_y1 AND column < b_x2 AND column >b_x1) THEN
		      red <= (OTHERS => '1');
				green	<= (OTHERS => '0');
				blue <= (OTHERS => '0');
	   elsIF(row < a_y2 and row > a_y1 AND column < a_x2 AND column >a_x1) THEN
		      red <= (OTHERS => '0');
				green	<= (OTHERS => '0');
				blue <= (OTHERS => '1');
	   elsIF(row < c_y2 and row > c_y1 AND column < c_x2 AND column >c_x1) THEN
		      red <= (OTHERS => '0');
				green	<= (OTHERS => '1');
				blue <= (OTHERS => '1');
		elsIF(row < d_y2 and row > d_y1 AND column < d_x2 AND column >d_x1) THEN
		      red <= (OTHERS => '0');
				green	<= (OTHERS => '0');
				blue <= (OTHERS => '0');
		elsIF(row < 300 and row > 100 AND column < 1700 AND column >1500) THEN
		      red <= (OTHERS => '1');
				green	<= (OTHERS => '0');
				blue <= (OTHERS => '0');
		elsIF(row < r_y2 and row >r_y1  AND column < r_x2 AND column >r_x1) THEN
		     red <= (OTHERS => '0');
				green	<= (OTHERS => '0');
				blue <= (OTHERS => '0');
		elsIF(row < n_y2 and row >n_y1  AND column < n_x2 AND column >n_x1) THEN
		      red <= (OTHERS => '1');
				green	<= (OTHERS => '0');
				blue <= (OTHERS => '0');

		
			ELSE
				red <= (OTHERS => '1');
				green	<= (OTHERS => '1');
				blue <= (OTHERS => '1');
			END IF;
		ELSE								--blanking time
			red <= (OTHERS => '0');
			green <= (OTHERS => '0');
			blue <= (OTHERS => '0');
		END IF;
	
	END PROCESS;
END behavior;