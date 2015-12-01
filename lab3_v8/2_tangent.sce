clear;

exec( get_absolute_file_path('2_tangent.sce') + "support.sce", -1 );

function nextx=TangentGetNextX( x, f )
    [ firstDer, secondDer ] = numderivative( f, x );
    
    nextx = x - f( x ) / secondDer;
endfunction

function x=TangentSolve( f, a, b, density )
    
endfunction
