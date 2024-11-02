module tb_demux14;

    logic In;
    logic [1:0] Sel;
    logic [3:0] Out;

    demux14 uut (
        .In(In),
        .Sel(Sel),
        .Out(Out)
    );

    initial begin
        $dumpfile("dump.vcd");
      $dumpvars(0,tb_demux14);
        In = 1'b1; Sel = 2'b00;
        #10;
        $display("In = %b, Sel = %b : Out = %b", In, Sel, Out);

        In = 1'b1; Sel = 2'b01;
        #10;
        $display("In = %b, Sel = %b : Out = %b", In, Sel, Out);

        In = 1'b1; Sel = 2'b10;
        #10;
        $display("In = %b, Sel = %b : Out = %b", In, Sel, Out);

        In = 1'b1; Sel = 2'b11;
        #10;
        $display("In = %b, Sel = %b : Out = %b", In, Sel, Out);

        $finish;
    end

endmodule

