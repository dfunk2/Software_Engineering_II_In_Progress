reduction_val = 2
def init()
  widget_width = screen_width()
  board_width = width_calc(widget_width)  # -2 for border
end

def on_resize(width)
  board_width = width_calc(width)  # -2 for border
end

def width_calc(width)
  val = width - reduction_val
end