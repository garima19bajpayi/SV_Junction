module tb_mux41;

    logic [3:0] D;
    logic [1:0] Sel;
    logic       Out;

    mux41 uut (
        .D(D),
        .Sel(Sel),
        .Out(Out)
    );

    initial begin
        $dumpfile("dump.vcd");
      $dumpvars(0, tb_mux41);
        D = 4'b0001; Sel = 2'b00;
        #10;
        $display("D = %b, Sel = %b : Out = %b", D, Sel, Out);

        D = 4'b0101; Sel = 2'b01;
        #10;
        $display("D = %b, Sel = %b : Out = %b", D, Sel, Out);

        D = 4'b1010; Sel = 2'b10;
        #10;
        $display("D = %b, Sel = %b : Out = %b", D, Sel, Out);

        D = 4'b1111; Sel = 2'b11;
        #10;
        $display("D = %b, Sel = %b : Out = %b", D, Sel, Out);

        $finish;
    end

endmodule
