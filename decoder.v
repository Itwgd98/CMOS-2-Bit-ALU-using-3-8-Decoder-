// NOT gate using CMOS (PMOS + NMOS)
module NOT_gate (A, Y, VDD, GND);
    input A, VDD, GND;
    output Y;

    pmos p1 (Y, VDD, A); // PMOS: drain=Y, source=VDD, gate=A
    nmos n1 (Y, GND, A); // NMOS: drain=Y, source=GND, gate=A
endmodule

// 3-input NAND gate using CMOS
module NAND3_gate (A, B, C, Y, VDD, GND);
    input A, B, C, VDD, GND;
    output Y;

    wire n1, n2;

    // NMOS series stack
    nmos n1a (n1, GND, C);
    nmos n1b (n2, n1, B);
    nmos n1c (Y, n2, A);

    // PMOS parallel
    pmos p1a (Y, VDD, A);
    pmos p1b (Y, VDD, B);
    pmos p1c (Y, VDD, C);
endmodule

// 3-input AND gate = NOT(NAND)
module AND3_gate (A, B, C, Y, VDD, GND);
    input A, B, C, VDD, GND;
    output Y;

    wire nand_out;

    NAND3_gate nand3 (.A(A), .B(B), .C(C), .Y(nand_out), .VDD(VDD), .GND(GND));
    NOT_gate inv (.A(nand_out), .Y(Y), .VDD(VDD), .GND(GND));
endmodule

// 3:8 Decoder using only CMOS logic
module decoder3to8 (A, B, C, Y, VDD, GND);
    input A, B, C, VDD, GND;
    output [7:0] Y;

    wire Abar, Bbar, Cbar;

    // Generate inverted inputs
    NOT_gate invA (.A(A), .Y(Abar), .VDD(VDD), .GND(GND));
    NOT_gate invB (.A(B), .Y(Bbar), .VDD(VDD), .GND(GND));
    NOT_gate invC (.A(C), .Y(Cbar), .VDD(VDD), .GND(GND));

    // Output logic
    AND3_gate and0 (.A(Abar), .B(Bbar), .C(Cbar), .Y(Y[0]), .VDD(VDD), .GND(GND));
    AND3_gate and1 (.A(Abar), .B(Bbar), .C(C),    .Y(Y[1]), .VDD(VDD), .GND(GND));
    AND3_gate and2 (.A(Abar), .B(B),    .C(Cbar), .Y(Y[2]), .VDD(VDD), .GND(GND));
    AND3_gate and3 (.A(Abar), .B(B),    .C(C),    .Y(Y[3]), .VDD(VDD), .GND(GND));
    AND3_gate and4 (.A(A),    .B(Bbar), .C(Cbar), .Y(Y[4]), .VDD(VDD), .GND(GND));
    AND3_gate and5 (.A(A),    .B(Bbar), .C(C),    .Y(Y[5]), .VDD(VDD), .GND(GND));
    AND3_gate and6 (.A(A),    .B(B),    .C(Cbar), .Y(Y[6]), .VDD(VDD), .GND(GND));
    AND3_gate and7 (.A(A),    .B(B),    .C(C),    .Y(Y[7]), .VDD(VDD), .GND(GND));
endmodule
