clear;
clc;

exec( get_absolute_file_path('main.sce') + "support.sce", -1 );
exec( get_absolute_file_path('main.sce') + "variables.sce", -1 );

disp( "Determening the root isolation interval..." );

[a, b] = askBorders( functionToInspect );

disp( "Starting solving with bisection method..." );
x = BisectionSolve( functionToInspect, a, b, density );
mprintf( "\nResult: x = %f\n", x );

disp( "Starting solving with chord method..." );
x = ChordSolve( functionToInspect, a, b, density );
mprintf( "\nResult: x = %f\n", x );

disp( "Starting solving with tangent (Newton) method..." );
x = TangentSolve( functionToInspect, a, b, density );
mprintf( "\nResult: x = %f\n", x );

disp( "Starting solving with method of fixed-point iteration..." );
x = IterSolve( functionToInspect, a, b, density );
mprintf( "\nResult: x = %f\n", x );

disp( "Finished" );
