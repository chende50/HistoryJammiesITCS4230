var barx = 610
var bary = 900
var barw = 700
var barh = 50

draw_set_color(c_black)
draw_rectangle(barx, bary, barx + barw, bary + barh, false)

draw_set_color(#f23a46)

//TODO: Make scale with difficulty
draw_rectangle((barx + barw/2) - (global.zoneSize * barw/2) , bary, (barx + barw/2) + (global.zoneSize * barw/2), bary + barh, false)

//Set pointer position
var percent = balance / maxBalance
var pointerx = barx + (barw/2) + percent * (barw/2)

//Draw pointer
draw_set_colour(c_white)
draw_line_width(pointerx, bary, pointerx, bary + barh, 10)