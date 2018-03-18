/// @description  TITLE GROW
if stop = false
{
    if grow = true
    {
        if size < 1.2
        size += .05
        else
        grow = false
    }
    else
    {
        size -= .05
        if size = 1
        stop = true
    }
}

