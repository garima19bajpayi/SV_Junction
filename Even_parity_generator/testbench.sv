module tb_even_parity_generator;

    logic [3:0] data_in;
    logic       parity_out;

    even_parity_generator uut (
        .data_in(data_in),
        .parity_out(parity_out)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_even_parity_generator);
        data_in = 4'b1010;
        #10;
        $display("data_in = %b, parity_out = %b", data_in, parity_out);

        data_in = 4'b1111;
        #10;
        $display("data_in = %b, parity_out = %b", data_in, parity_out);

        data_in = 4'b0000;
        #10;
        $display("data_in = %b, parity_out = %b", data_in, parity_out);

        data_in = 4'b0101;
        #10;
        $display("data_in = %b, parity_out = %b", data_in, parity_out);

        $finish;
    end

endmodule
