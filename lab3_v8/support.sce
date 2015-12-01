exec( get_absolute_file_path('support.sce') + "variables.sce", -1 );

function [ a, b ] = askBorders( fun )
    x = [0.1:0.1:5]';
    
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
