clear;

exec( get_absolute_file_path('2_reverse_matrix.sce') + "support.sce", -1 );

x = inv( A ) * b;

checkSolving( A, x, b );

disp( x, "x = " );
