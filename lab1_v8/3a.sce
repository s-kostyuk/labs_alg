mode( -1 )

n = input(" Введите количество элементов n: ")
eps = input(" Введите число ε: ")

min_i = -1

mprintf("\n")

for i=1:1:n do
    ai = (-1)^(i + 1) * 3^(i + 1) / factorial(i + 1)
    
    if (abs( ai ) < eps) & (min_i == -1) then
        min_i = i
    end
    
    mprintf( "Значение a %2d-е равно: % E\n", i, ai )
end

mprintf("\n")

if (min_i == -1) then
    mprintf( "Условие не выполняется" )
else
    mprintf( "Наименьший номер, для которого выполняется условие: %d", min_i )
end


