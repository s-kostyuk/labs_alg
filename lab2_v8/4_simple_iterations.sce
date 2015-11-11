clear;

density = 0.0001;

exec( get_absolute_file_path('4_simple_iterations.sce') + "support.sce", -1 );

if( ~ isSquare( A ) ) then
    disp( "Matrix A is not square. Incorrect results possible." )
end

n = length( b );

for ( i = 1:n )
    for ( j = 1:n )
        if( i == j ) then
            alpha( i, j ) = 0;
        else
            alpha( i, j ) = - A( i, j ) / A( i, i );
        end
    end
end

disp( alpha, "Matrix α contains: " );

for( i = 1:n ) 
    bbeta( i ) = b( i ) / A( i,i );
end

disp( bbeta, "Matrix β contains: " );

it = 0;
x = bbeta;

while %T do
    xprev = x;
    
    x = bbeta + alpha*xprev;
    
    if( abs( xprev - x ) <= density )
        break;
    end
    
    it = it + 1;
end

if( checkSolving( A, x, b ) ) then
    disp ("Matrix was solved correctly");
end;

disp( x, "x = " );
mprintf( "\nЗначение получено на %d-й итерации", it );

    
