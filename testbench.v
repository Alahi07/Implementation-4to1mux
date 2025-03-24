module mux4to1_tb;
  reg A, B, C, D;
  reg [1:0] sel;
  wire y;

  mux4to1 uut (
    .A(A), 
    .B(B), 
    .C(C), 
    .D(D), 
    .sel(sel), 
    .y(y)
  );

  initial begin
    $dumpfile("mux4to1.vcd");
    $dumpvars(0, mux4to1_tb);
  end
  initial begin

    $monitor("Time=%0t | sel=%b | A=%b B=%b C=%b D=%b | y=%b", 
              $time, sel, A, B, C, D, y);

    

    A = 0; B = 0; C = 0; D = 0; sel = 2'b00; #10;
    A = 0; B = 1; C = 0; D = 0; sel = 2'b01; #10;
    A = 0; B = 0; C = 1; D = 0; sel = 2'b10; #10;
    A = 0; B = 0; C = 0; D = 1; sel = 2'b11; #10;


    $finish;
  end
endmodule
