module tb_half_subtractor;

    logic A, B;
    logic Difference, Borrow;

    half_subtractor hs (
        .A(A),
        .B(B),
        .Difference(Difference),
        .Borrow(Borrow)
    );

    initial begin
        $dumpfile("dump.vcd");
      $dumpvars(0, tb_half_subtractor);
        A = 1'b0; B = 1'b0;
        #10;
        $display("A = %b, B = %b : Difference = %b, Borrow = %b", A, B, Difference, Borrow);

        A = 1'b0; B = 1'b1;
        #10;
        $display("A = %b, B = %b : Difference = %b, Borrow = %b", A, B, Difference, Borrow);

        A = 1'b1; B = 1'b0;
        #10;
        $display("A = %b, B = %b : Difference = %b, Borrow = %b", A, B, Difference, Borrow);

        A = 1'b1; B = 1'b1;
        #10;
        $display("A = %b, B = %b : Difference = %b, Borrow = %b", A, B, Difference, Borrow);

        $finish;
    end

endmodule

