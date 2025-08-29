`timescale 1ns / 1ps


module SltiFunction(
    input rs, // A
    input immediate, // mB
    output rt // slti
      );
      
assign rt = (rs < immediate) ? 1 : 0;
endmodule
