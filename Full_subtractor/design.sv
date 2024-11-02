module full_subtractor(
    input logic A,
    input logic B,
    input logic Bin,
    output logic D,
    output logic Bout
);

    assign D = A ^ B ^ Bin;
    assign Bout = (~A & (B | Bin)) | (B & Bin);

endmodule

