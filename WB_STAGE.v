module WB_STAGE(
  input [36:0]  pipeline_reg_in,
  output        Reg_write_en,
  output [2:0]  Reg_write_dest,
  output [15:0] Reg_write_data
);    

  MUX2 #(16) myWBRstMux2( 
    .SLCT(pipeline_reg_in[0:0]),
    .IN1(pipeline_reg_in[20:5]),
    .IN0(pipeline_reg_in[36:21]),
    .OT(Reg_write_data)
  );

  assign Reg_write_dest = pipeline_reg_in[3:1];
  assign Reg_write_en = pipeline_reg_in[4];
endmodule