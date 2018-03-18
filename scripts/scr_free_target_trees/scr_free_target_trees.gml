// WHEN THE MOUSE IS CLICKED OVER GRID SPACE THAT IS NOT FREE, THIS SCRIPT SEARCHES FOR A FREE GRID SPACE IN A SPIRAL DIRECTION

var cur_target_x = target_x
var cur_target_y = target_y

if mp_grid_get_cell(global.grid, target_x div GRID_SIZE, target_y div GRID_SIZE) == -1
    target_y += 64

    
shift = 0

while(mp_grid_get_cell(global.grid, target_x div GRID_SIZE, target_y div GRID_SIZE) == -1)
{
    // CHECK ALONG BOTTOM
    if shift = 0
    {
        if target_x < cur_target_x + 64
        target_x += 64
        else
        shift += 1
    }
    // CHECK ALONG RIGHT SIDE
    if shift = 1
    {
        if target_y > cur_target_y - 64
        target_y -= 64
        else
        shift += 1
    }
    // CHECK ALONG TOP SIDE
    if shift = 2
    {
        if target_x > cur_target_x - 64
        target_x -= 64
        else
        shift += 1
    }
    // CHECK ALONG LEFT SIDE
    if shift = 3
    {
        if target_y < cur_target_y + 128
        target_y += 64
        else
        shift += 1
    }
    // CHECK ALONG BOTTOM SIDE 
    if shift = 4
    {
        if target_x < cur_target_x + 128
        target_x += 64
        else
        shift += 1
    }
    // CHECK ALONG RIGHT SIDE
    if shift = 5
    {
        if target_y > cur_target_y - 128
        target_y -= 64
        else
        shift += 1
    }
    // CHECK ALONG TOP SIDE 
    if shift = 6
    {
        if target_x > cur_target_x - 128
        target_x -= 64
        else
        shift += 1
    }
    // CHECK ALONG LEFT SIDE
    if shift = 7
    {
        if target_y < cur_target_y + 192
        target_y += 64
        else
        shift += 1
    }
    // CHECK ALONG BOTTOM SIDE 
    if shift = 8
    {
        if target_x < cur_target_x + 192
        target_x += 64
        else
        shift += 1
    }
    // CHECK ALONG RIGHT SIDE
    if shift = 9
    {
        if target_y > cur_target_y - 192
        target_y -= 64
        else
        shift += 1
    }
    // CHECK ALONG TOP SIDE 
    if shift = 10
    {
        if target_x > cur_target_x - 192
        target_x -= 64
        else
        shift += 1
    }
    // CHECK ALONG LEFT SIDE
    if shift = 11
    {
        if target_y < cur_target_y + 256
        target_y += 64
        else
        shift += 1
    }
    // CHECK ALONG BOTTOM SIDE 
    if shift = 12
    {
        if target_x < cur_target_x + 256
        target_x += 64
        else
        shift += 1
    }
    // CHECK ALONG RIGHT SIDE
    if shift = 13
    {
        if target_y > cur_target_y - 256
        target_y -= 64
        else
        shift += 1
    }
    // CHECK ALONG TOP SIDE 
    if shift = 14
    {
        if target_x > cur_target_x - 256
        target_x -= 64
        else
        shift += 1
    }
    // CHECK ALONG LEFT SIDE
    if shift = 15
    {
        if target_y < cur_target_y + 320
        target_y += 64
        else
        shift += 1
    }
            // CHECK ALONG BOTTOM SIDE 
    if shift = 16
    {
        if target_x < cur_target_x + 320
        target_x += 64
        else
        shift += 1
    }
    // CHECK ALONG RIGHT SIDE
    if shift = 17
    {
        if target_y > cur_target_y - 320
        target_y -= 64
        else
        shift += 1
    }
    // CHECK ALONG TOP SIDE 
    if shift = 18
    {
        if target_x > cur_target_x - 320
        target_x -= 64
        else
        shift += 1
    }
    // CHECK ALONG LEFT SIDE
    if shift = 19
    {
        if target_y < cur_target_y + 384
        target_y += 64
        else
        shift += 1
    } 
    
    
    //
    // CHECK ALONG BOTTOM
    if shift = 20
    {
        if target_x < cur_target_x + 384
        target_x += 64
        else
        shift += 1
    }
    // CHECK ALONG RIGHT SIDE
    if shift = 21
    {
        if target_y > cur_target_y - 384
        target_y -= 64
        else
        shift += 1
    }
    // CHECK ALONG TOP SIDE
    if shift = 22
    {
        if target_x > cur_target_x - 384
        target_x -= 64
        else
        shift += 1
    }
    // CHECK ALONG LEFT SIDE
    if shift = 23
    {
        if target_y < cur_target_y + 448
        target_y += 64
        else
        shift += 1
    }
    // CHECK ALONG BOTTOM SIDE 
    if shift = 24
    {
        if target_x < cur_target_x + 448
        target_x += 64
        else
        shift += 1
    }
    // CHECK ALONG RIGHT SIDE
    if shift = 25
    {
        if target_y > cur_target_y - 448
        target_y -= 64
        else
        shift += 1
    }
    // CHECK ALONG TOP SIDE 
    if shift = 26
    {
        if target_x > cur_target_x - 448
        target_x -= 64
        else
        shift += 1
    }
    // CHECK ALONG LEFT SIDE
    if shift = 27
    {
        if target_y < cur_target_y + 512
        target_y += 64
        else
        shift += 1
    }
    // CHECK ALONG BOTTOM SIDE 
    if shift = 28
    {
        if target_x < cur_target_x + 512
        target_x += 64
        else
        shift += 1
    }
    // CHECK ALONG RIGHT SIDE
    if shift = 29
    {
        if target_y > cur_target_y - 512
        target_y -= 64
        else
        shift += 1
    }
    // CHECK ALONG TOP SIDE 
    if shift = 30
    {
        if target_x > cur_target_x - 512
        target_x -= 64
        else
        shift += 1
    }
    // CHECK ALONG LEFT SIDE
    if shift = 31
    {
        if target_y < cur_target_y + 576
        target_y += 64
        else
        shift += 1
    }
    // CHECK ALONG BOTTOM SIDE 
    if shift = 32
    {
        if target_x < cur_target_x + 576
        target_x += 64
        else
        shift += 1
    }
    // CHECK ALONG RIGHT SIDE
    if shift = 33
    {
        if target_y > cur_target_y - 576
        target_y -= 64
        else
        shift += 1
    }
    // CHECK ALONG TOP SIDE 
    if shift = 34
    {
        if target_x > cur_target_x - 576
        target_x -= 64
        else
        shift += 1
    }
    // CHECK ALONG LEFT SIDE
    if shift = 35
    {
        if target_y < cur_target_y + 640
        target_y += 64
        else
        shift += 1
    }
            // CHECK ALONG BOTTOM SIDE 
    if shift = 36
    {
        if target_x < cur_target_x + 640
        target_x += 64
        else
        shift += 1
    }
    // CHECK ALONG RIGHT SIDE
    if shift = 37
    {
        if target_y > cur_target_y - 640
        target_y -= 64
        else
        shift += 1
    }
    // CHECK ALONG TOP SIDE 
    if shift = 38
    {
        if target_x > cur_target_x - 640
        target_x -= 64
        else
        shift += 1
    }
    // CHECK ALONG LEFT SIDE
    if shift = 39
    {
        target_x = cur_target_x
        target_y = cur_target_y
    }
}
