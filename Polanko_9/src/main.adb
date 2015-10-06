with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Main is

   MatrizA: Array(1..10,1..10) of Integer;
   MatrizB: Array(1..10,1..10) of Integer;
   MatrizC: Array(1..10,1..10) of Integer;
   i,j,k: Integer:=1;
   Suma: Integer:=0;

   task LlenarMatrizAyB is
   end LlenarMatrizAyB;

   task InicializarMatrizResultado is
   end InicializarMatrizResultado;

   task Multiplicar_Matrices is
   end Multiplicar_Matrices;



   task body LlenarMatrizAyB is
   begin
      for i in 1..10 loop
         for j in 1..10 loop
            MatrizA(i,j):=1;
            MatrizB(i,j):=1;
         end loop;
      end loop;
   end LlenarMatrizAyB;

   task body InicializarMatrizResultado is
   begin
      for i in 1..10 loop
         for j in 1..10 loop
            MatrizC(i,j):=0;
         end loop;

      end loop;
   end InicializarMatrizResultado;


   task body Multiplicar_Matrices is
   begin
      Put_Line("Multiplicar Matris A y B");
         for i in 1..10 loop
            for j in 1..10 loop
               for k in 1..10 loop
                  MatrizC(i,j):=MatrizC(i,j)+MatrizA(i,k)*MatrizB(k,j);
               end loop;
            end loop;
         end loop;

      for i in 1..10 loop
         for j in 1..10 loop
            Put(MatrizC(i,j));
         end loop;
        Put_Line("");
      end loop;
    Put_Line("");
   end Multiplicar_Matrices;

begin
   Put_Line("Multiplicar Matriz con Task");
null;
end Main;
