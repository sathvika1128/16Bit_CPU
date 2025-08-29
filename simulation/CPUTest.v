`timescale 1ns / 1ps



module CPUTest();

reg Clock;

initial 
begin
#0 Clock = 1'b0; //#5 Clock = 1'b0; 
#100 Clock = 1'b0; // #10 Clock = 1'b1;
end

always
begin
    #5 Clock = ~Clock;
end

CPU cpu(Clock);
endmodule
