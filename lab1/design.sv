// 3-input minority gate
// Output is 1 if 0 or 1 inputs are 1
module minority(input logic a,
                input logic b,
                input logic c,
                output logic y);
  
  assign y = (~a & ~b) | (~a & ~c) | (~b & ~c);

endmodule