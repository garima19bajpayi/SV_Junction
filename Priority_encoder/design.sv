module priority_encoder (
    input  logic [7:0] In,
    output logic [2:0] Out,
    output logic       Valid
);

    always_comb begin
        Out = 3'b000;
        Valid = 1'b0;
        if (In[7]) begin
            Out = 3'b111;
            Valid = 1'b1;
        end else if (In[6]) begin
            Out = 3'b110;
            Valid = 1'b1;
        end else if (In[5]) begin
            Out = 3'b101;
            Valid = 1'b1;
        end else if (In[4]) begin
            Out = 3'b100;
            Valid = 1'b1;
        end else if (In[3]) begin
            Out = 3'b011;
            Valid = 1'b1;
        end else if (In[2]) begin
            Out = 3'b010;
            Valid = 1'b1;
        end else if (In[1]) begin
            Out = 3'b001;
            Valid = 1'b1;
        end else if (In[0]) begin
            Out = 3'b000;
            Valid = 1'b1;
        end
    end

endmodule

