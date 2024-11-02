module odd_parity_generator (
    input  logic [3:0] data_in,
    output logic       parity_out
);

    assign parity_out = (data_in[0] ^ data_in[1] ^ data_in[2] ^ data_in[3]);

endmodule

