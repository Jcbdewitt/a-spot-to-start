// THIS SCRIPT WILL COMPARE THE 8 CELLS SURROUNDING THE TARGETED UNIT TO SEE WHICH ONE IS THE CLOSEST

closest_distance = 10000000 // set closest distance really high  
 
// MID RIGHT FREE?
if mp_grid_get_cell(global.grid, target_x div GRID_SIZE + 1, target_y div GRID_SIZE + 0) == 0
{
    if mp_grid_get_cell(global.grid, target_x div GRID_SIZE + 2, target_y div GRID_SIZE + 0) == 0  // CHECK TO THE RIGHT
    or mp_grid_get_cell(global.grid, target_x div GRID_SIZE + 1, target_y div GRID_SIZE - 1) == 0  // CHECK ABOVE
    or mp_grid_get_cell(global.grid, target_x div GRID_SIZE + 1, target_y div GRID_SIZE + 1) == 0  // CHECK BELOW
    {
        closest_cell = "mid right"
        closest_distance = distance_to_point(target_x + 64, target_y)            
    }
}
    
    
// TOP RIGHT FREE?
if mp_grid_get_cell(global.grid, target_x div GRID_SIZE + 1, target_y div GRID_SIZE - 1) == 0
{
    if mp_grid_get_cell(global.grid, target_x div GRID_SIZE + 2, target_y div GRID_SIZE - 1) == 0  // CHECK TO THE RIGHT
    or mp_grid_get_cell(global.grid, target_x div GRID_SIZE + 1, target_y div GRID_SIZE - 2) == 0  // CHECK ABOVE
    or mp_grid_get_cell(global.grid, target_x div GRID_SIZE + 0, target_y div GRID_SIZE - 1) == 0  // CHECK TO THE LEFT
    or mp_grid_get_cell(global.grid, target_x div GRID_SIZE + 1, target_y div GRID_SIZE + 0) == 0  // CHECK BELOW
    {
        if distance_to_point(target_x + 64, target_y - 64) < closest_distance
        {
            closest_cell = "top right"
            closest_distance = distance_to_point(target_x + 64, target_y - 64)
        }
    }
}

// TOP MIDDLE FREE?
if mp_grid_get_cell(global.grid, target_x div GRID_SIZE + 0, target_y div GRID_SIZE - 1) == 0
{
    if mp_grid_get_cell(global.grid, target_x div GRID_SIZE + 1, target_y div GRID_SIZE - 1) == 0  // CHECK TO THE RIGHT
    or mp_grid_get_cell(global.grid, target_x div GRID_SIZE + 0, target_y div GRID_SIZE - 2) == 0  // CHECK ABOVE
    or mp_grid_get_cell(global.grid, target_x div GRID_SIZE - 1, target_y div GRID_SIZE - 1) == 0  // CHECK TO THE LEFT
    {
        if distance_to_point(target_x, target_y - 64) < closest_distance
        {
            closest_cell = "top mid"
            closest_distance = distance_to_point(target_x, target_y - 64)
        }
    }
}
    
// TOP LEFT FREE?
if mp_grid_get_cell(global.grid, target_x div GRID_SIZE - 1, target_y div GRID_SIZE - 1) == 0
{
    if mp_grid_get_cell(global.grid, target_x div GRID_SIZE + 0, target_y div GRID_SIZE - 1) == 0  // CHECK TO THE RIGHT
    or mp_grid_get_cell(global.grid, target_x div GRID_SIZE - 1, target_y div GRID_SIZE - 2) == 0  // CHECK ABOVE
    or mp_grid_get_cell(global.grid, target_x div GRID_SIZE - 2, target_y div GRID_SIZE - 1) == 0  // CHECK TO THE LEFT
    or mp_grid_get_cell(global.grid, target_x div GRID_SIZE - 1, target_y div GRID_SIZE + 0) == 0  // CHECK BELOW
    {
        if distance_to_point(target_x - 64, target_y - 64) < closest_distance
        {
            closest_cell = "top left"
            closest_distance = distance_to_point(target_x - 64, target_y - 64)
        }
    }
}
    
// MID LEFT FREE?
if mp_grid_get_cell(global.grid, target_x div GRID_SIZE - 1, target_y div GRID_SIZE + 0) == 0
{
    if mp_grid_get_cell(global.grid, target_x div GRID_SIZE - 1, target_y div GRID_SIZE - 1) == 0  // CHECK ABOVE
    or mp_grid_get_cell(global.grid, target_x div GRID_SIZE - 2, target_y div GRID_SIZE + 0) == 0  // CHECK TO THE LEFT
    or mp_grid_get_cell(global.grid, target_x div GRID_SIZE - 1, target_y div GRID_SIZE + 1) == 0  // CHECK BELOW
    {
        if distance_to_point(target_x - 64, target_y) < closest_distance
        {
            closest_cell = "mid left"
            closest_distance = distance_to_point(target_x - 64, target_y)
        }
    }
}
    
// BOT LEFT FREE?
if mp_grid_get_cell(global.grid, target_x div GRID_SIZE - 1, target_y div GRID_SIZE + 1) == 0
{
    if mp_grid_get_cell(global.grid, target_x div GRID_SIZE + 0, target_y div GRID_SIZE + 1) == 0  // CHECK TO THE RIGHT
    or mp_grid_get_cell(global.grid, target_x div GRID_SIZE - 1, target_y div GRID_SIZE + 0) == 0  // CHECK ABOVE
    or mp_grid_get_cell(global.grid, target_x div GRID_SIZE - 2, target_y div GRID_SIZE + 1) == 0  // CHECK TO THE LEFT
    or mp_grid_get_cell(global.grid, target_x div GRID_SIZE - 1, target_y div GRID_SIZE + 2) == 0  // CHECK BELOW
    {
        if distance_to_point(target_x - 64, target_y + 64) < closest_distance
        {
            closest_cell = "bot left"
            closest_distance = distance_to_point(target_x - 64, target_y + 64)
        }
    }
}
    
// BOT MID FREE?
if mp_grid_get_cell(global.grid, target_x div GRID_SIZE + 0, target_y div GRID_SIZE + 1) == 0
{
    if mp_grid_get_cell(global.grid, target_x div GRID_SIZE + 1, target_y div GRID_SIZE + 1) == 0  // CHECK TO THE RIGHT
    or mp_grid_get_cell(global.grid, target_x div GRID_SIZE - 1, target_y div GRID_SIZE + 1) == 0  // CHECK TO THE LEFT
    or mp_grid_get_cell(global.grid, target_x div GRID_SIZE + 0, target_y div GRID_SIZE + 2) == 0  // CHECK BELOW
    {
        if distance_to_point(target_x, target_y + 64) < closest_distance
        {
            closest_cell = "bot mid"
            closest_distance = distance_to_point(target_x, target_y + 64)
        }
    }
}
    
// BOT RIGHT FREE?
if mp_grid_get_cell(global.grid, target_x div GRID_SIZE + 1, target_y div GRID_SIZE + 1) == 0
{
    if mp_grid_get_cell(global.grid, target_x div GRID_SIZE + 2, target_y div GRID_SIZE + 1) == 0  // CHECK TO THE RIGHT
    or mp_grid_get_cell(global.grid, target_x div GRID_SIZE + 1, target_y div GRID_SIZE + 0) == 0  // CHECK ABOVE
    or mp_grid_get_cell(global.grid, target_x div GRID_SIZE + 0, target_y div GRID_SIZE + 1) == 0  // CHECK TO THE LEFT
    or mp_grid_get_cell(global.grid, target_x div GRID_SIZE + 1, target_y div GRID_SIZE + 2) == 0  // CHECK BELOW
    {
        if distance_to_point(target_x + 64, target_y + 64) < closest_distance
        {
            closest_cell = "bot right"
            closest_distance = distance_to_point(target_x + 64, target_y + 64)
        }
    }
}
    
// IF CLOSEST CELL = RIGHT      
if closest_cell = "mid right"
{
    target_x += 64
    target_y += 0
}
    
// IF CLOSEST CELL = TOP RIGHT      
if closest_cell = "top right"
{
    target_x += 64
    target_y -= 64
}
    
// IF CLOSEST CELL = TOP MID      
if closest_cell = "top mid"
{
    target_x += 0
    target_y -= 64
}
    
// IF CLOSEST CELL = TOP LEFT     
if closest_cell = "top left"
{
    target_x -= 64
    target_y -= 64
}
    
// IF CLOSEST CELL = MID LEFT     
if closest_cell = "mid left"
{
    target_x -= 64
    target_y += 0
}
    
// IF CLOSEST CELL = BOT LEFT    
if closest_cell = "bot left"
{
    target_x -= 64
    target_y += 64
}
    
// IF CLOSEST CELL = BOT MID      
if closest_cell = "bot mid"
{
    target_x += 0
    target_y += 64
}
    
// IF CLOSEST CELL = BOT RIGHT      
if closest_cell = "bot right"
{
    target_x += 64
    target_y += 64
}
