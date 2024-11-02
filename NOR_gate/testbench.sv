module nor_gate_tb;

    
    logic a;
    logic b;
    logic y;

    
    nor_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    
    initial begin
        $dumpfile("dump.vcd");
      $dumpvars(0,nor_gate_tb);
        
        $monitor("At time %0t: a = %b, b = %b, y = %b", $time, a, b, y);

        
        a = 0; b = 0;
        #10; 

        
        a = 0; b = 1;
        #10; 

        
        a = 1; b = 0;
        #10; 

        
        a = 1; b = 1;
        #10;

        
        $finish;
    end

endmodule
