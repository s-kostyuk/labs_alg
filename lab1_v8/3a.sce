mode( -1 )

n = input(" Введите количество элементов n: ")
eps = input(" Введите число ε: ")

min_i = -1

for i=1:1:n do
    ai = (-1)^(i + 1) * 3^(i + 1) / factorial(i + 1)
    
    if (abs( ai ) < eps) & (min_i == -1) then
        min_i = i
    end
    
    disp( ai, "Значение a i-е равно:" )
end

if (min_i == -1) then
    disp( "Условие не выполняется" )
else
    disp( min_i, "Наименьший номер, для которого выполняется условие: " )
end


