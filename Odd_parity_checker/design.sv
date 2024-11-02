module odd_parity_checker (
    input  logic [3:0] data_in,
    input  logic       parity_in,
    output logic       error
);

    assign error = ~(data_in[0] ^ data_in[1] ^ data_in[2] ^ data_in[3] ^ parity_in);

endmodule

