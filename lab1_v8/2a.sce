mode( -1 )

unit = input("Выберите единицу длины L: дм, км, м, мм или см: ")

L = input("Введите значение длины L в выбранных единицах: ")

select unit 
case "дм" then
    L = L / 10;
case "км" then 
    L = L * 1000;
case "м" then 
    L = L;
case "мм" then 
    L = L / 1000;
case "см" then 
    L = L / 100;
else
    disp( "Неверная единица" )
    return
end

mprintf( "\nДлина L в метрах: %d", L )
