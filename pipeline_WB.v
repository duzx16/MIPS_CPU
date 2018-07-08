module pipeline_WB(WB_RegDst,WB_MemtoReg,WB_out,WB_inA,WB_inB,WB_PC,WB_WrReg);
input [1:0]WB_RegDst,WB_MemtoReg;
input [31:0]WB_inA,WB_inB,WB_PC;
output [31:0]WB_out;
output [4:0]WB_WrReg;
assign WB_out=(WB_MemtoReg==0) ? WB_inA:
              (WB_MemtoReg==1) ? WB_inB:
              (WB_MemtoReg==2) ? WB_PC:0;
assign WB_WrReg=(WB_RegDst==2) ? 31:WB_WrReg;
endmodule
