clear;

exec( get_absolute_file_path('3_gauss-jordan.sce') + "support.sce", -1 );

C = rref( [ A b ] );

[ n, m ] = size( C );

x = C( :, m );

if( checkSolving( A, x, b ) ) then
    disp ("Matrix was solved correctly");
end;

disp( x, "x = " );
