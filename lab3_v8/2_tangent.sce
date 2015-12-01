exec( get_absolute_file_path('2_tangent.sce') + "support.sce", -1 );

function nextx=TangentGetNextX( x, f )
    [ firstDer, secondDer ] = numderivative( f, x );
    
    nextx = x - f( x ) / firstDer;
endfunction

function x=TangentSolve( f, a, b, density )
    [ firstDerA, secondDerA ] = numderivative( f, a );
    [ firstDerB, secondDerB ] = numderivative( f, b );
    
    if( ( f( a ) * secondDerA ) > 0 ) then
        x = a;
    elseif( ( f( b ) * secondDerB ) > 0  ) then
        x = b;
    else
        disp( "Something wrong with sign of function and its second derivative" )
    end
    
    it = 1;
    
    while %T
        xprev = x;
        
        x = TangentGetNextX( x, f );
        if( abs( xprev - x ) < density )
            break;
        end
        
        it = it + 1;
    end
    
    mprintf( "\nSolved on iteration number %d\n", it )
endfunction
