module tb_sr_latch;

    logic S;
    logic R;
    logic Q;
    logic Qn;

    sr_latch uut (
        .S(S),
        .R(R),
        .Q(Q),
        .Qn(Qn)
    );

    initial begin
        $dumpfile("dump.vcd");
      $dumpvars(0, tb_sr_latch);
        S = 0; R = 0;
        #10;
        $display("S = %b, R = %b, Q = %b, Qn = %b", S, R, Q, Qn);

        S = 1; R = 0;
        #10;
        $display("S = %b, R = %b, Q = %b, Qn = %b", S, R, Q, Qn);

        S = 0; R = 1;
        #10;
        $display("S = %b, R = %b, Q = %b, Qn = %b", S, R, Q, Qn);

        S = 1; R = 1;
        #10;
        $display("S = %b, R = %b, Q = %b, Qn = %b", S, R, Q, Qn);

        $finish;
    end

endmodule

