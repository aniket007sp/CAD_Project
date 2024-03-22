import Vector::*;
 
  interface IFC_Cla;            
    method Action val_in (Bit#(16) data_in_1 , Bit#(16) data_in_2, Bit#(1) data_in_3 ); //action input 
    method Bit#(16) sum();   // return output no state change  
    method Bit#(1) carry();  // return output no state change	      
   endinterface

//----------------------------CLA-------------------------------//
       
 module mkCla(IFC_Cla); // defination of module

   Vector#(16,Reg#(Bit#(1))) a_in_stage_1 <- replicateM(mkRegA(0)); //instance of vector of 1-bit a reg
   Vector#(16,Reg#(Bit#(1))) b_in_stage_1 <- replicateM(mkRegA(0)); // " " 
   Reg#(Bit#(1))             c_in_stage_1    <- mkRegA(0);          //instance of 1-bit c reg
      
   Vector#(16,Reg#(Bit#(1))) p_stage_2 <- replicateM(mkRegA(0));
   Vector#(16,Reg#(Bit#(1))) g_stage_2 <- replicateM(mkRegA(0));  
   Reg#(Bit#(1))   c_stage_2   <- mkRegA(0);
   
   Vector#(16,Reg#(Bit#(1))) sum_out_stage_3 <- replicateM(mkRegA(0)); 
   Reg#(Bit#(1))             c_out_stage_3   <- mkRegA(0);
         
  rule add; 

    Vector#(17,Bit#(1)) c = unpack(0);
    Vector#(16,Bit#(1)) sum = unpack(0);
  
    c_stage_2<=  c_in_stage_1;  
    c[0] = c_stage_2 ;
       
    for( int i=0 ; i<16 ; i=i+1) begin                         // creating 1-bit 16 times
       p_stage_2[i] <=(a_in_stage_1[i] ^ b_in_stage_1[i]);     // propogation logic
       g_stage_2[i] <=(a_in_stage_1[i] & b_in_stage_1[i]);     // generation login 
       c[i+1]= g_stage_2[i] | (p_stage_2[i]&c[i]);             // carry logic
       sum[i]= p_stage_2[i] ^ c[i]; end                        // sum logic
            
      c_out_stage_3 <= c[16];	                               //
        writeVReg(sum_out_stage_3, sum);                       // writing into vector of register || writeVreg for writing in vector of register   
       // writeVReg(sum_out_stage_3, unpack(1));    fail testcase example 
    endrule 
    
    
    method Action val_in (Bit#(16) data_in_1, Bit#(16) data_in_2, Bit#(1) data_in_3);  // in
     writeVReg(a_in_stage_1, unpack(data_in_1));
     writeVReg(b_in_stage_1, unpack(data_in_2));
     c_in_stage_1 <= data_in_3;      
    endmethod 
   
   
   method Bit#(16) sum();
        return pack(readVReg(sum_out_stage_3)); 
    endmethod 
   
    method Bit#(1) carry();
        return c_out_stage_3; 
    endmethod 
   
   endmodule 
   
      
//----------------------testbench------------------------//   
   module mkTb(); 
   
   IFC_Cla adder <- mkCla(); // instance of carry look ahead adder
   Reg#(Bit#(1)) c_out   <- mkRegA(0); 
   Reg#(Bit#(33)) counter   <- mkRegA(0);
   
   Reg#(Bit#(33)) test_stage_1   <- mkRegA(0);
   Reg#(Bit#(33)) test_stage_2   <- mkRegA(0);
   Reg#(Bit#(33)) test_stage_3   <- mkRegA(0);
   
     
    rule step1; 
     Bit#(16) temp_1= counter[32:17];
     Bit#(16) temp_2= counter[16:1];
     Bit#(1) temp_3= counter[0];        
     adder.val_in(temp_1,temp_2,temp_3);    
     counter<= counter + 1;  
     
     test_stage_1 <= counter;       // 3-stage delay because of input and output comparision
     test_stage_2 <= test_stage_1 ;
     test_stage_3 <= test_stage_2 ;
    endrule 
    
    rule step2 (counter > 2) ;        
        $display("a_in:-%d",test_stage_3[32:17]);
        $display("b_in:-%d",test_stage_3[16:1]);
        $display("carry :-%d",test_stage_3[0]); 
        $display("sum:-%d",adder.sum());
        $display("carry:- %d",adder.carry());
        $display("---------------------------------");
        Bit#(17) lv_adder =  (zeroExtend(test_stage_3[32:17]) +zeroExtend(test_stage_3[16:1]) + zeroExtend(test_stage_3[0])); // adder for exaustive verification 
                
        if(adder.sum() != lv_adder[15:0] || adder.carry() != lv_adder[16]   ) begin 
          $display("Test Failed");  
          $finish();
         end 
         
        if (counter == 'b1)begin
         $finish(); end  
     
    endrule       
   endmodule 
     
//-----------------------------------------------------//  
   
   
   
   
 
