`include"mux2to1.v"
module mux4to1 (
  input wire A, 
  input wire B, 
  input wire C, 
  input wire D, 
  input wire [1:0] sel, 
  output wire y
);
  wire mux1_out, mux2_out;

  
  mux2to1 mux1 (.in0(A), 
                .in1(B), 
                .sel(sel[0]), 
                .out(mux1_out)
               );
  mux2to1 mux2 (.in0(C), 
                .in1(D), 
                .sel(sel[0]), 
                .out(mux2_out)
               );
  mux2to1 mux3 (.in0(mux1_out), 
                .in1(mux2_out), 
                .sel(sel[1]), 
                .out(y));
endmodule
