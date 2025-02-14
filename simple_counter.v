module simple_counter (
    input clk,        
    input up_down,    
    output reg [3:0] count // 4-bit counter output
);

    always @(posedge clk) begin
       
            if (up_down) begin // Count up
                if (count == 4'b1001) begin
                    count <= 4'b0000; // Reset to 0 after 9
                end else begin
                    count <= count + 1; // Increment counter
                end
            end else begin // Count down
                if (count == 4'b0000) begin
                    count <= 4'b1001; // Reset to 9 after 0
                end else begin
                    count <= count - 1; // Decrement counter
                end
            end
        end
    

endmodule
