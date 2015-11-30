exec( get_absolute_file_path('support.sce') + "variables.sce", -1 );

function isNull=isAlmostNull( x )
    if (abs( max( x ) ) > 10^-12) then
        isNull = %F;
    else
        isNull = %T;
    end
endfunction

function isCorrect=isCorrectlySolved( A, x, b )
    P = A * x - b;
    
    isCorrect = isAlmostNull( P );
endfunction

function result=substitute( A, x, b )
    result = A * x - b;
endfunction

function checkSolving( A, x, b )
    if( isCorrectlySolved( A, x, b ) ) then
        disp ("Matrix was solved correctly");
    else
        disp( substitute( A, x, b ), "Disparity:" );
    end;
endfunction

function is=isSquare( matr )
    [n, m] = size( matr );

    if( n ~= m ) then
        is = %F;
    else
        is = %T;
    end

endfunction

if( ~ isSquare( A ) ) then
    disp( "Matrix A is not square. Incorrect results are possible." )
end
