exec( get_absolute_file_path('1_chord.sce') + "support.sce", -1 );

function nextx=GetNextXFixedA( x, a, b, f )
    nextx = x - ( f( x ) / ( f( x ) - f( a ) ) ) * ( x - a )
endfunction

function nextx=GetNextXFixedB( x, a, b, f )
    nextx = x - ( f( x ) / ( f( b ) - f( x ) ) ) * ( b - x )
endfunction

function x=ChordSolve( f, a, b, density )
    [ firstDerA, secondDerA ] = numderivative( f, a );
    [ firstDerB, secondDerB ] = numderivative( f, b );
    
    if( ( f( a ) * secondDerA ) > 0 ) then
        FindNextX = GetNextXFixedA;
        disp( "a" );
        x = b;
    elseif( ( f( b ) * secondDerB ) > 0  ) then
        FindNextX = GetNextXFixedB;
        disp( "b" );
        x = a;
    else
        disp( "Something wrong with sign of function and its second derivative" )
        x = a;
        return
    end
    
    it = 1;
    
    while %T
        xprev = x;
        mprintf( "\nx=%d, a=%d, b=%d\n", x, a, b );
        
        x = FindNextX( x, a, b, f );
        if( abs( xprev - x ) < density )
            break;
        end
        
        it = it + 1;
    end
    
    mprintf( "\nSolved on iteration number %d\n", it )
endfunction
