exec( get_absolute_file_path('support.sce') + "variables.sce", -1 );

function [ a, b ] = askBorders( nOfFunction )
    x = [0.1:0.1:10]';
    
    select nOfFunction
    case 1 then
        plot2d( x, f1( x ) );
        
    case 2 then
        plot2d( x, f2( x ) );
        
    case 3 then
        plot2d( x, f3( x ) );
        
    else
        disp( "unknown function" );
    end
    
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
