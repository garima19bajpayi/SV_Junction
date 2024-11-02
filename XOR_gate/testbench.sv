
module tb_xor_gate;

   
    logic tb_a;
    logic tb_b;
    logic tb_y;

    
    xor_gate uut (
        .a(tb_a),
        .b(tb_b),
        .y(tb_y)
    );

    
    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(0, tb_xor_gate);
        
        $display("A B | Y");
        $display("----|--");

        
        tb_a = 0;
        tb_b = 0;
        #10;  
        $display("%0d %0d | %0d", tb_a, tb_b, tb_y);

        
        tb_a = 0;
        tb_b = 1;
        #10;
        $display("%0d %0d | %0d", tb_a, tb_b, tb_y);

       
        tb_a = 1;
        tb_b = 0;
        #10;
        $display("%0d %0d | %0d", tb_a, tb_b, tb_y);

        
        tb_a = 1;
        tb_b = 1;
        #10;
        $display("%0d %0d | %0d", tb_a, tb_b, tb_y);

        
        $finish;
    end

endmodule

