with Ada.Integer_Text_IO, Ada.Text_IO, Ada.Float_Text_IO;
use Ada.Integer_Text_IO, Ada.Text_IO, Ada.Float_Text_IO;

procedure P_2 is
   
   
   
  function Summa (I: in Integer; Sum: in out Integer) return Integer is
      begin
	 Sum:= Sum + I;
	
	 return Sum;
	 end Summa;
   
      procedure Delbart (Sum: in  Integer) is
	    
      begin
	 for J in 1..Sum loop
	 if Sum mod J = 0 then
	    Put(J,1);
	      if J /= Sum then
	      Put(", ");
		end if; 
	 end if;
	 end loop;
	    
      end Delbart;
      
      function Medel (Sum, V: in Integer) return Float is
      begin
	 return Float(Sum) / Float(V); 
	 end Medel;
   
     
	 I, V, Sum: Integer;
	 J: Float;
begin
   Put("Mata in heltal. Avsluta med 0: ");
   Sum:= 0;
   V:= 0;
   loop
      Get(I);
      exit when I = 0;
      Put("Summan är ");
      Put(Summa(I, Sum),1);
      Put(" och denna är jämnt delbart med "); 
      Delbart(Sum);  
      New_Line;
      V:= V + 1;
   end loop;
   New_Line;
   J:= Medel(Sum, V);
   Put("Medelvärdet av de inmatade talen var ");
   Put(J, Exp=> 0, Aft => 3, Fore=>1);
   Put('.');
end P_2;
