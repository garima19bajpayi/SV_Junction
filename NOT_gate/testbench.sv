module not_gate_tb;

    
    logic a;
    logic y;

    
    not_gate uut (
        .a(a),
        .y(y)
    );

    
    initial begin
      
        $dumpfile("dump.vcd");
      $dumpvars(0, not_gate_tb);
        $monitor("At time %0t: a = %b, y = %b", $time, a, y);

        
        a = 0;
        #10; 
        
        a = 1;
        #10; 

        
        $finish;
    end

endmodule
