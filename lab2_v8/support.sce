//29, 32x 1 + 4, 48x 2 + 9, 98x 3 +1, 22x 4 = −201, 94
//5, 33x 1 + 31, 78x 2 +10, 06x 3 + 4, 29x 4 = −244, 29
//−14, 75x 1 − 5, 23x 2 + 29, 55x 3 − 5,85x 4 = −165,13
//13, 22x 1 + 0, 62x 2 −10,85x 3 + 32,17x 4 = −327, 99

A = [  29.32,  4.48,   9.98,  1.22;
        5.33, 31.78,  10.06,  4.29;
      -14.75, -5.23,  29.55, -5.85;
       13.22,  0.62, -10.85, 32.17 ];
       
b = [ -201.94; -244.29; -165.13; -327.99 ];

function isNull=isAlmostNull( x )
    if (abs( max( x ) ) > 10^-12) then
        isNull = %F;
    else
        isNull = %T;
    end
endfunction

function isCorrect=checkSolving( A, x, b )
  P = A * x - b;
  
  isCorrect = isAlmostNull( P );
endfunction

function is=isSquare( matr )
  [n, m] = size( matr );
  
  if( n ~= m ) then
      is = %F;
  else
      is = %T;
  end
  
endfunction
