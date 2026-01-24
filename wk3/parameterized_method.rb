def set_color(color)
  # ... pretend ...
end

def draw_line(x0, y0, x1, y1)
  # ... pretend ...
end

def horizontal_line(y_pos)
  horizontal_line_color(y_pos, "blue")
end

def horizontal_line_color(y_pos, color)
  set_color(color)
  draw_line(0, y_pos, 100, y_pos)
end
# Pretend there are a zillion calls to horizontal_line() out here
#part 1 old method has default parameter of blue but option for other colors
# horizontal_line(120)
# horizontal_line(120, "yellow")
#part 2. if cant change prototype...old method calls new method with new functionality
horizontal_line(120)
horizontal_line_color(120, "yellow")