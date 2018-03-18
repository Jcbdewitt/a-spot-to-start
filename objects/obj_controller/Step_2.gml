/// @description  SLIDE VIEW AROUND WITH THE MOUSE
if(mouse_x < __view_get( e__VW.XView, 0 ) + 8)
{
  __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (30) );
}

if(mouse_y < __view_get( e__VW.YView, 0 ) + 8)
  __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (30) );

if(mouse_x > __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 8 )
  __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (30) );
  
if(mouse_y > __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 8)
  __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (30) );

  

// KEEP THE VIEW INSIDE OF THE ROOM
__view_set( e__VW.XView, 0, max(__view_get( e__VW.XView, 0 ), 0 ));
__view_set( e__VW.XView, 0, min(__view_get( e__VW.XView, 0 ), room_width - __view_get( e__VW.WView, 0 ) ) );
__view_set( e__VW.YView, 0, max(__view_get( e__VW.YView, 0 ), 0 ));
__view_set( e__VW.YView, 0, min(__view_get( e__VW.YView, 0 ), room_height - __view_get( e__VW.HView, 0 ) ));



/// GLOBAL ATTACK BUTTON = FALSE
if mouse_check_button_pressed(mb_left) or mouse_check_button_pressed(mb_right)
{
    global.attack_button = false
}

