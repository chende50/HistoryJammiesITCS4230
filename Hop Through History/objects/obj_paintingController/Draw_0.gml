var barx = 800
var bary = 100
var barw = 300
var barh = 20

draw_set_color(c_white)
draw_rectangle(barx, bary, barx + barw, bary + barh, false)

draw_set_color(c_red)

//TODO: Make scale with difficulty
draw_rectangle((barx + barw/2) - 5, bary, (barx + barw/2) + 5, bary + barh, false)