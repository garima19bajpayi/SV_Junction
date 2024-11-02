module tb_even_parity_checker;

    logic [3:0] data_in;
    logic       parity_in;
    logic       error;

    even_parity_checker uut (
        .data_in(data_in),
        .parity_in(parity_in),
        .error(error)
    );

    initial begin
        $dumpfile("dump.vcd");
      $dumpvars(0, tb_even_parity_checker);
        data_in = 4'b1010;
        parity_in = 1'b1;
        #10;
        $display("data_in = %b, parity_in = %b, error = %b", data_in, parity_in, error);

        data_in = 4'b1111;
        parity_in = 1'b0;
        #10;
        $display("data_in = %b, parity_in = %b, error = %b", data_in, parity_in, error);

        data_in = 4'b0000;
        parity_in = 1'b0;
        #10;
        $display("data_in = %b, parity_in = %b, error = %b", data_in, parity_in, error);

        data_in = 4'b0101;
        parity_in = 1'b0;
        #10;
        $display("data_in = %b, parity_in = %b, error = %b", data_in, parity_in, error);

        $finish;
    end

endmodule

