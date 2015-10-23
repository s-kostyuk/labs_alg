mode( -1 )

C( 1:3, 1:3 ) = input(" Введите матрицу C размером 3x3 в формате [ 1, 2, 3; 4, 5, 6; 7, 8, 9 ]: ")

max_v = C(2, 1)

if C(2, 2) > max_v then
    max_v = C(2, 2)
end

if C(2, 3) > max_v then
    max_v = C(2, 3)
end

mprintf( "\nМаксимальное значение во сторой строке равно: %d", max_v )
