module half_adder_tb;

    logic tb_a;
    logic tb_b;
    logic tb_sum;
    logic tb_carry;

    half_adder uut (
        .a(tb_a),
        .b(tb_b),
        .sum(tb_sum),
        .carry(tb_carry)
    );

    initial begin
        $dumpfile("dump.vcd");
      $dumpvars(0,half_adder_tb);
        $display("A B | Sum Carry");
        $display("----|----------");

        tb_a = 0;
        tb_b = 0;
        #10;
        $display("%0d %0d |  %0d   %0d", tb_a, tb_b, tb_sum, tb_carry);

        tb_a = 0;
        tb_b = 1;
        #10;
        $display("%0d %0d |  %0d   %0d", tb_a, tb_b, tb_sum, tb_carry);

        tb_a = 1;
        tb_b = 0;
        #10;
        $display("%0d %0d |  %0d   %0d", tb_a, tb_b, tb_sum, tb_carry);

        tb_a = 1;
        tb_b = 1;
        #10;
        $display("%0d %0d |  %0d   %0d", tb_a, tb_b, tb_sum, tb_carry);

        $finish;
    end

endmodule
