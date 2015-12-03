// функция вида x = φ(x), полученная вручную из исследуемой функции
function newx=fXByXHardcoded( x )
    newx = ( -0.5^x + 3 - x.^2 -1 ) / 2;
endfunction

// производная от функции выше
function newx=fXByXHardcodedDerivative( x )
    newx = numderivative( fXByXHardcoded, x );
endfunction

function x=IterSolve( f, a, b, density )
    q = max( abs( fXByXHardcodedDerivative( [ a : 0.1 : b] ) ) );
    
    it = 1;
    
    x = (a + b) / 2
    
    while %T
        xprev = x;
        
        x = fXByXHardcoded( x );
        if( abs( xprev - x ) < ( 1 - q ) * density / q)
            break;
        end
        
        it = it + 1;
    end
    
    mprintf( "\nSolved on iteration number %d\n", it )
endfunction
