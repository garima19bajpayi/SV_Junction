module full_adder_tb;

    logic tb_a;
    logic tb_b;
    logic tb_cin;
    logic tb_sum;
    logic tb_carry;

    full_adder uut (
        .a(tb_a),
        .b(tb_b),
        .cin(tb_cin),
        .sum(tb_sum),
        .carry(tb_carry)
    );

    initial begin
        $dumpfile("dump.vcd");
      $dumpvars(0, full_adder_tb);
        $display("A B Cin | Sum Carry");
        $display("--------|----------");

        tb_a = 0; tb_b = 0; tb_cin = 0;
        #10;
        $display("%0d %0d  %0d  |  %0d   %0d", tb_a, tb_b, tb_cin, tb_sum, tb_carry);

        tb_a = 0; tb_b = 0; tb_cin = 1;
        #10;
        $display("%0d %0d  %0d  |  %0d   %0d", tb_a, tb_b, tb_cin, tb_sum, tb_carry);

        tb_a = 0; tb_b = 1; tb_cin = 0;
        #10;
        $display("%0d %0d  %0d  |  %0d   %0d", tb_a, tb_b, tb_cin, tb_sum, tb_carry);

        tb_a = 0; tb_b = 1; tb_cin = 1;
        #10;
        $display("%0d %0d  %0d  |  %0d   %0d", tb_a, tb_b, tb_cin, tb_sum, tb_carry);

        tb_a = 1; tb_b = 0; tb_cin = 0;
        #10;
        $display("%0d %0d  %0d  |  %0d   %0d", tb_a, tb_b, tb_cin, tb_sum, tb_carry);

        tb_a = 1; tb_b = 0; tb_cin = 1;
        #10;
        $display("%0d %0d  %0d  |  %0d   %0d", tb_a, tb_b, tb_cin, tb_sum, tb_carry);

        tb_a = 1; tb_b = 1; tb_cin = 0;
        #10;
        $display("%0d %0d  %0d  |  %0d   %0d", tb_a, tb_b, tb_cin, tb_sum, tb_carry);

        tb_a = 1; tb_b = 1; tb_cin = 1;
        #10;
        $display("%0d %0d  %0d  |  %0d   %0d", tb_a, tb_b, tb_cin, tb_sum, tb_carry);

        $finish;
    end

endmodule

