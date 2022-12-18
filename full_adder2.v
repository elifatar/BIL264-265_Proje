`timescale 1ns / 1ps


module full_adder2(
    input a_i,
    input b_i,
    input carry_in,
    output sum_o,
    output carry_out
    );
    
    wire HA1_sum, HA1_carry_o, HA2_carry_o;
    
    half_adder HA1(a_i, b_i, HA1_sum, HA1_carry_o);
    half_adder HA2(carry_in, HA1_sum, sum_o, HA2_carry_o);
    or (carry_out, HA1_carry_o, HA2_carry_o);
endmodule
