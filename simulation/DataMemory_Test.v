`timescale 1ns / 1ps


module DataMemory_Test();
reg Clock, MemWrite, MemRead;
reg[15:0] Adresa;
reg[15:0] WriteData;
wire[15:0] ReadData;

initial 
begin
#0 Clock=1'b0;
#5 MemWrite=1'b1; Adresa=16'b0000000000001001; WriteData=16'b0011001100110011; MemRead=1'b0;
#5 Clock=1'b1;
#5 Clock=1'b0;MemWrite=1'b0;
#5 MemRead=1'b1; Adresa=16'b0000000000001001;
#5 $stop;
end

DataMemory DM(Adresa, WriteData, Clock, MemWrite, MemRead, ReadData);
endmodule

