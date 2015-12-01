function y=f1( x )
    y = 0.5^x - 3 + ( x + 1 ) ^ 2
endfunction

function y=f2( x )
    y = x .* log10( x + 1 ) - 1;
endfunction

function y=f3( x )
    y = x + log10( x ) - 0.5;
endfunction

density = 0.0001;
