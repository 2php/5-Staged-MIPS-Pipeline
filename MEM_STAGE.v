module MEM_STAGE(
  input rst,
   input [15:0]     DataMemoryAddress,
   input [15:0]     DataMemoryWriteData,
   input            DataMemoryWriteEnable,
   output [15:0]    DataMemoryOut
);
  
  DataMemory#(256) myDataMemory(
    .MemWriteEn(DataMemoryWriteEnable),
    .reset(rst),
    .address(DataMemoryAddress),
    .writeData(DataMemoryWriteData),
    .ReadData(DataMemoryOut)
  );
  
endmodule
