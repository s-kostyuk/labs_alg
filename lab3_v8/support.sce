exec( get_absolute_file_path('support.sce') + "0_bisection.sce", -1 );
exec( get_absolute_file_path('support.sce') + "1_chord.sce", -1 );
exec( get_absolute_file_path('support.sce') + "2_tangent.sce", -1 );
exec( get_absolute_file_path('support.sce') + "3_simple_iter.sce", -1 );

function [ a, b ] = askBorders( fun )
    x = [ -10 : 0.1 : 10 ]';
    
    plot2d( x, fun( x ) );
    
    desc = gca();
    
    desc.x_location = "origin";
    desc.y_location = "origin";
    
    xgrid();
    
    while( %T )
        a = input( "Input left border of the root isolation interval: " );
        b = input( "Input right border of the root isolation interval: " );
        
        if( b < a ) then
            disp( "a value cant be bigger than b value. Try again." );
        else
            break;
        end
    end
    
endfunction
