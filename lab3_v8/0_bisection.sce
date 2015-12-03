function [intervalA, intervalB] = GetNewInterval(f, a, b)
    C0 = ( a + b ) / 2;
    
    if ( f( a ) * f( C0 ) < 0 ) then
        intervalA = a;
        intervalB = C0;
    elseif( f( b ) * f( C0 ) < 0) then
        intervalA = C0;
        intervalB = b;
    else
        disp( "Error: Your interval isn`t correct." )
    end
endfunction

function x = BisectionSolve( f, a, b, density )
    it = 1;
    
    while %T
        [a,b] = GetNewInterval( f, a, b );
        
        if(abs( a - b ) < density)
            x = ( a + b ) / 2;
            break;
        end
        
        it = it + 1;
    end
    
    mprintf( "\nSolved on iteration number %d\n", it )
endfunction

