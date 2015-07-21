module MUX4#(parameter SIZE = 8)(input[1:0] SLCT, input [SIZE - 1:0] IN3, IN2, IN1, IN0, output [SIZE - 1 : 0] OT);
  
  assign OT = (SLCT[1] == 1'b1)? { (SLCT[0] == 1'b1)?IN3 : IN2 } :  {(SLCT[0] == 1'b1)?IN1 : IN0} ;
endmodule