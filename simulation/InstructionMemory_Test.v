`timescale 1ns / 1ps



module InstructionMemory_Test();
reg[15:0] PC;
wire[15:0] Instruction;
initial
begin
#0 PC=16'd10;
#5 PC=16'd12;
#5 PC=16'd14;
#5 PC=16'd16;
#5 PC=16'd18;
#5 $stop;
end
InstructionMemory IM(PC,Instruction);
endmodule
