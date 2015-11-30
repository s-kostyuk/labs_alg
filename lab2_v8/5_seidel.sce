clear;

exec( get_absolute_file_path('5_seidel.sce') + "support.sce", -1 );

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
    
    for( i = 1 : n )
        x( i ) = bbeta( i ) + alpha( i, : ) * x;
    end
    
    if( abs( xprev - x ) <= density )
        break;
    end
    
    it = it + 1;
end

checkSolving( A, x, b );

disp( x, "x = " );
mprintf( "\nValues of x was found on iteration number %d", it );
