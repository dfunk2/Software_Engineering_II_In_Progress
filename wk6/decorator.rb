def make_decorator(f)
  count = 0
  ->(){
    f.call
    count += 1
    puts count
  }
end

def activate()
  puts "Activated!"
end

decorated = make_decorator(method(:activate))
decorated.call
decorated.call
decorated.call