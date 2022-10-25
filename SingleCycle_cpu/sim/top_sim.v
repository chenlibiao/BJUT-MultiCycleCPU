`timescale 1ns/1ps

module top_sim;

reg clk,reset;

SingleCycle_cpu_top cpu(clk,reset);


initial
begin
    clk=1;
    reset=1;
    #5 reset=0;
    $readmemh("D:/Modelsim/SingleCycle_cpu/data/test03.txt",cpu.ifu_t.im);
end

always
    #25 clk=~clk;

endmodule