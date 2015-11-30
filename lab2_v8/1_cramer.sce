clear;

exec( get_absolute_file_path('1_cramer.sce') + "support.sce", -1 );

n = length( b );

for( i = 1:n )
    Asup( :, :, i ) = A;
    Asup( :, i, i ) = b';
end;

D = det( A );

for( i = 1:n )
    Dsupl( i ) = det( Asup( :, :, i ) ); 
end;

x = Dsupl / D;

checkSolving( A, x, b );

disp( x, "x = " );
