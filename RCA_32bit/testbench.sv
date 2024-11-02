module tb_ripple_carry_adder_32bit;

    logic [31:0] A, B;
    logic Cin;
    logic [31:0] Sum;
    logic Cout;

    ripple_carry_adder_32bit uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        $dumpfile("dump.vcd");
      $dumpvars(0, tb_ripple_carry_adder_32bit);
        A = 32'h00000001; B = 32'h00000002; Cin = 1'b0;
        #10;
        $display("A = %h, B = %h, Cin = %b : Sum = %h, Cout = %b", A, B, Cin, Sum, Cout);

        A = 32'hFFFFFFFF; B = 32'h00000001; Cin = 1'b0;
        #10;
        $display("A = %h, B = %h, Cin = %b : Sum = %h, Cout = %b", A, B, Cin, Sum, Cout);

        A = 32'hAAAAAAAA; B = 32'h55555555; Cin = 1'b0;
        #10;
        $display("A = %h, B = %h, Cin = %b : Sum = %h, Cout = %b", A, B, Cin, Sum, Cout);

        A = 32'h12345678; B = 32'h87654321; Cin = 1'b1;
        #10;
        $display("A = %h, B = %h, Cin = %b : Sum = %h, Cout = %b", A, B, Cin, Sum, Cout);

        $finish;
    end

endmodule
