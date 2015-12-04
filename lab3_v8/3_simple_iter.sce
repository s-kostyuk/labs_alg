// функция вида x = φ(x), полученная вручную из исследуемой функции
function newx=fXByXHardcoded( x )
    newx = ( -0.5^x + 3 - x.^2 -1 ) / 2;
endfunction

// производная от функции выше
function newx=fXByXHardcodedDerivative( x )
    newx = numderivative( fXByXHardcoded, x );
endfunction

function x=IterSolve( f, a, b, density )
    q = abs( fXByXHardcodedDerivative( a ) );
    x = a;
    
    step = 0.1;
    
    for( currx = [ a + step : step : b ] ) 
        dervalue = abs( fXByXHardcodedDerivative( currx ) );
        if( dervalue < q ) then
            q = dervalue;
            x = currx;
            break;
        end
    end
    
    if( q >= 1 ) then
        disp( "Unable to use specified x = φ(x) function with this interval. See conditions for convergence of this method for details." );
        return;
    end
    
    it = 1;
    
    while %T
        xprev = x;
        
        x = fXByXHardcoded( x );
        if( abs( xprev - x ) < ( 1 - q ) * density / q )
            break;
        end
        
        it = it + 1;
    end
    
    mprintf( "\nSolved on iteration number %d\n", it )
endfunction
