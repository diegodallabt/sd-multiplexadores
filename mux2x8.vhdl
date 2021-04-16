entity mux2x8 is
    port(
        c0  : in  bit_vector(7 downto 0);
        c1  : in  bit_vector(7 downto 0);
        sel : in  bit;
        zc  : out bit_vector(7 downto 0)
    );
end entity;

architecture comuta of mux2x8 is
    begin

        -- comando vhdl de seleção de sinais
        zc <= c0 when sel = '0' else c1;
    
    end architecture;