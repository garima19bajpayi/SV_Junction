module tb_ripple_carry_adder;

    parameter N = 4;
    logic [N-1:0] A, B;
    logic Cin;
    logic [N-1:0] Sum;
    logic Cout;

    ripple_carry_adder #(N) uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        $dumpfile("dump.vcd");
      $dumpvars(0, tb_ripple_carry_adder);
        A = 4'b0001; B = 4'b0010; Cin = 1'b0;
        #10;
        $display("A = %b, B = %b, Cin = %b : Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);

        A = 4'b1101; B = 4'b1011; Cin = 1'b0;
        #10;
        $display("A = %b, B = %b, Cin = %b : Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);

        A = 4'b1111; B = 4'b1111; Cin = 1'b1;
        #10;
        $display("A = %b, B = %b, Cin = %b : Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);

        A = 4'b0110; B = 4'b0101; Cin = 1'b0;
        #10;
        $display("A = %b, B = %b, Cin = %b : Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);

        $finish;
    end

endmodule

