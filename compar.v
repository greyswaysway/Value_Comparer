//Jai Wei Hu Lab B2 Nov 6, 2020 tests a 2 bit comparator, 
//Gr returns true if a>b and Eq returns true if a==b
module labK;
reg [1:0] a, b;
wire Gr, Eq, nota;
integer i, j;

initial
begin
    for (i = 0; i < 2; i = i + 1)
    begin
        for (j = 0; j < 2; j = j + 1)
        begin
            a = i;
            b = j;
            not my_not(nota, a);//nota = not A
            nor my_nor(Gr, b, nota);//Gr = nor b nota
            and my_and(Eq, a, b);//Eq = a&b
            #1 $display("PASS: a=%b, b=%b -> Gr=%b, Eq=%b", a, b, Gr, Eq);//display result
        end
    end
    $finish;
end

endmodule