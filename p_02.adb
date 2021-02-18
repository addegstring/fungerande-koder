with Ada.Integer_Text_IO, Ada.Text_IO, Ada.Float_Text_IO;
use Ada.Integer_Text_IO, Ada.Text_IO, Ada.Float_Text_IO;

procedure P_02 is
   
   
   procedure Get_Variables (X, Y : out Integer; Z : out Float) is
   begin
      Put("Mata in X: ");
   Get(X);
   Put("Mata in Y: ");
   Get(Y);
   loop
   Put("Mata in Z: ");
   Get(Z);
   if Z < Float(X) or Z > Float(Y) then
      Put("Fel! Måste vara minst ");
      Put(X,1);
      Put(" och som mest ");
      Put(Y,1);
      Put('.');
      New_Line;
   end if;
   exit when Z > Float(X) and Z < Float(Y);
   end loop;
      end Get_Variables;
      
      procedure Put_Line (X, Y : in Integer; Z: in Float) is
      begin
	 Put(X,4);
	 Put(Y, ((Y-X)*10));
	 New_Line;
	 Put("   ");
	 for I in 1..(Y-X) loop
	    Put('|');
	    for J in 1..9 loop
	       Put('.');
	    end loop;
	 end loop;
	 Put('|');
      end Put_Line;
      
      procedure Put_Pointer (X, Y : in Integer; Z : in Float) is
	 P: Integer;
      begin
	 P:= (Integer(Z*10.0))-(x*10);
	 Put("   ");
	   for K in 1..P loop
	    Put(' ');
	 end loop;
	 Put('^');
	 
      end Put_Pointer;

      
   X, Y : Integer;
   Z: Float;
begin
   Get_Variables(X, Y, Z);
   Put_Line(X, Y, Z);
   New_Line;
   Put_Pointer(X, Y, Z);
   
   
end P_02;
