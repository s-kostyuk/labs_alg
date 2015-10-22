mode( -1 )

unit = input("Выберите единицу длины L: дм, км, м, мм или см: ")

L = input("Введите значение длины L в выбранных единицах: ")

if unit == "дм" then
    L = L / 10;
elseif unit == "км" then 
    L = L * 1000;
elseif unit == "м" then 
    L = L;
elseif unit == "мм" then 
    L = L / 1000;
elseif unit == "см" then 
    L = L / 100;
else
    disp( "Неверная единица" )
    return
end

disp( L, "Длина L в метрах: " )
