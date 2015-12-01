exec( get_absolute_file_path('3_simple_iter.sce') + "support.sce", -1 );

function newx=fXByXHardcoded( x )
    newx = ( -0.5^x + 3 - x^2 -1 ) / 2;
endfunction

function newx=fXByXHardcodedDerivative( x )
    newx = 0.346574 * 0.5^x - x;
endfunction

function x=IterSolve( f, a, b, density )
    q = max( abs( fXByXHardcodedDerivative( [ a : 0.1 : b] ) ) );
    
    it = 1;
    
    x = (a + b) / 2
    
    while %T
        xprev = x;
        
        x = fXByXHardcoded( x );
        if( abs( xprev - x ) < (1 - q) * density / q)
            break;
        end
        
        it = it + 1;
    end
    
    mprintf( "\nSolved on iteration number %d\n", it )
endfunction
