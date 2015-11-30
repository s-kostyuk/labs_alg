clear;

exec( get_absolute_file_path('3_gauss-jordan.sce') + "support.sce", -1 );

C = rref( [ A b ] );

[ n, m ] = size( C );

x = C( :, m );

checkSolving( A, x, b );

disp( x, "x = " );
