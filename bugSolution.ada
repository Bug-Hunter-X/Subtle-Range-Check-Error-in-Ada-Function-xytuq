```ada
function Check_Range(Num : Integer) return Boolean is
begin
  if Num >= 1 and then Num <= 10 then  -- Corrected range check
    return True;
  else
    return False;
  end if;
end Check_Range;

with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   Num : Integer := 12;
begin
   if Check_Range(Num) then
      Put_Line("Number is within range");
   else
      Put_Line("Number is outside range");
   end if;
end Main;
```