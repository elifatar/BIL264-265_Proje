`timescale 1ns / 1ps

module ripple_carry_adder #(parameter N=64)(
    input [N-1:0] sayi1, 
    input [N-1:0] sayi2,
    output [N-1:0] toplam
    );
    
    wire carry_out;
    wire [N-1:0] carry;
    
    genvar i;
    generate
        for(i=0; i<N; i=i+1) begin: generate_N_bit_adder
            if(i==0)
                half_adder f(sayi1[0], sayi2[0], toplam[0], carry[0]);
            else
                full_adder2 f(sayi1[i], sayi2[i], carry[i-1], toplam[i], carry[i]);
        end
        assign carry_out = carry [N-1];
    endgenerate
endmodule
