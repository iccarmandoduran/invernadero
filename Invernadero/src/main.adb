with Ada.Text_IO,Ada.Integer_Text_IO;use Ada.Text_IO,Ada.Integer_Text_IO;
procedure Main is
   hum,temp :Integer;
   task Temperatura;
   task Humedad;

   task body Temperatura is
   t:Integer;
   begin
     temp:=37;
      t:=temp;
         if (temp<=20 or temp<37) then
         for t in temp..40 loop
             temp:=t;
             Put_Line("Temperatura");
             Put(temp);
          end loop;
         end if;
         if (temp>=37) then
         for t in reverse 17..temp loop
             temp:=t;
             Put_Line("Temperatura");
             Put(temp);
          end loop;
         end if;



   end Temperatura;
   task body Humedad is
      h:Integer;
   begin
      hum:=20;
      h:=hum;
      if (hum<=20) or (hum<40) then
         for h in hum..40 loop
             hum:=h;
             Put_Line("Humedad");
             Put(hum);
            end loop;
         end if;

         if (hum>=40) then
            for h in reverse 20..hum loop
             hum:=h;
             Put_Line("Humedad");
             Put(hum);
            end loop;
         end if;

   end Humedad;
   k:Integer;
begin
   k:=0;
   loop

   if temp>=37 and hum<=20 then
               Put_Line("riego Activo");
   else
               Put_Line("Riego inactivo");
      end if;
      k:=k+1;
   exit when k=100;
   end loop;
end Main;
