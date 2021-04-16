entity tb_mux2x8 is

end entity;

architecture comuta of tb_mux2x8 is
    component mux2x8 is
        port(
            c0  : in  bit_vector(7 downto 0);
            c1  : in  bit_vector(7 downto 0);
            sel : in  bit;
            zc  : out bit_vector(7 downto 0)
        );
    end component;

    signal sc0  : bit_vector(7 downto 0);
    signal sc1  : bit_vector(7 downto 0);
    signal ssel : bit;
    signal szc  : bit_vector(7 downto 0);
begin

    u_mux2x8 : mux2x8 port map
    (sc0,    -- canal 0
     sc1,    -- canal 1
     ssel,   -- seletor
     szc);   -- saídas com comando vhdl

     u_tb : process
     begin
         sc0 <= "00010000";
 
         sc1 <= "11000000";
 
         ssel <= '0';
         wait for 10 ns;
 
         ssel <= '1';
         wait for 10 ns;
 
         wait;
     end process;
end architecture;