//: version "2.0-b10"
//: property encoding = "iso8859-1"
//: property locale = "en"
//: property prefix = "_GG"
//: property title = "aykut2.v"
//: property timingViolationMode = 2
//: property initTime = "0 ns"

`timescale 1ns/1ns

//: /netlistBegin main
module main;    //: root_module
reg [1:0] w6;    //: /sn:0 {0}(#:320,313)(320,265)(272,265)(272,235){1}
reg [7:0] w7;    //: /sn:0 {0}(#:207,316)(207,250)(232,250)(232,235){1}
reg w5;    //: /sn:0 {0}(57,229)(179,229)(179,186)(211,186){1}
wire [7:0] w4;    //: /sn:0 {0}(#:437,100)(437,170)(354,170){1}
wire w1;    //: /sn:0 {0}(72,172)(196,172)(196,170)(211,170){1}
//: enddecls

  //: LED g4 (w4) @(437,93) /sn:0 /w:[ 0 ] /type:3
  //: DIP g3 (w7) @(207,327) /sn:0 /R:2 /w:[ 0 ] /st:0 /dn:1
  //: DIP g2 (w6) @(320,324) /sn:0 /R:2 /w:[ 0 ] /st:2 /dn:1
  //: SWITCH g1 (w5) @(40,229) /sn:0 /w:[ 0 ] /st:1 /dn:1
  _GGCLOCK_P100_0_50 g5 (.Z(w1));   //: @(59,172) /sn:0 /w:[ 0 ] /omega:100 /phi:0 /duty:50
  odevv g0 (.clk(w1), .reset(w5), .datain(w7), .S(w6), .dataout(w4));   //: @(212, 154) /sz:(141, 80) /sn:0 /p:[ Li0>1 Li1>1 Bi0>1 Bi1>1 Ro0<1 ]

endmodule
//: /netlistEnd

//: /hdlBegin odevv
//: interface  /sz:(141, 80) /bd:[ Li0>reset(32/80) Li1>clk(16/80) Bi0>S[1:0](60/141) Bi1>datain[7:0](20/141) Ro0<dataout[7:0](16/80) ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
//: enddecls
module odevv(dataout,datain,clk,S,reset);

  input [7:0] datain;
  input [1:0] S;
  input clk,reset;
  output reg [7:0] dataout=0;
  
  always @(posedge clk)
    if(reset)
      begin
        
        case(S)
          0:begin datain<=0;
            end
          1:begin dataout<=dataout+1;
            end
          2:begin dataout<=dataout-1;
            end
          default: begin dataout=datain;
                   end 
        endcase
      end
    else if(!reset)
      begin
        datain<=0;
        end
        
        
endmodule
//: /hdlEnd


`timescale 1ns/1ns

