`timescale 1ns / 1ps


module mux2ne1(
    input Hyrja0, //B
    input Hyrja1, // JOB
    input S, // Bnegate
    output Dalja // mB
    );
    
assign Dalja = S ? Hyrja1 : Hyrja0;

endmodule
