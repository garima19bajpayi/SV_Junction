module multiplier_4bit_tb;

    logic [3:0] tb_a;
    logic [3:0] tb_b;
    logic [7:0] tb_product;

    multiplier_4bit uut (
        .a(tb_a),
        .b(tb_b),
        .product(tb_product)
    );

    initial begin
        $dumpfile("dump.vcd");
      $dumpvars(0,multiplier_4bit_tb);
        $display("A    B   | Product");
        $display("--------|---------");

        tb_a = 4'b0001; tb_b = 4'b0001;
        #10;
        $display("%b  %b  |   %b", tb_a, tb_b, tb_product);

        tb_a = 4'b0010; tb_b = 4'b0011;
        #10;
        $display("%b  %b  |   %b", tb_a, tb_b, tb_product);

        tb_a = 4'b0100; tb_b = 4'b0100;
        #10;
        $display("%b  %b  |   %b", tb_a, tb_b, tb_product);

        tb_a = 4'b0111; tb_b = 4'b0010;
        #10;
        $display("%b  %b  |   %b", tb_a, tb_b, tb_product);

        tb_a = 4'b1111; tb_b = 4'b1111;
        #10;
        $display("%b  %b  |   %b", tb_a, tb_b, tb_product);

        $finish;
    end

endmodule

