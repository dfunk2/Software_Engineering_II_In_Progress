class Player
  attr_reader :name

  def initialize(name)
    @name = name
    @hit_points = 12
    @observers = []
  end

  def add_observers(o)
    @observers << o
  end 

  def decrease_hp(n)
    @hit_points -= n
    for o in @observers
      o.on_hit_point_loss(self, n)
    end
  end
end

class Observer1
  def on_hit_point_loss(p, delta)
    puts "player #{p.name} has lost #{delta} hit points"
  end
end

class Observer2
  def on_hit_point_loss(p, delta)
    puts "Oh noes! Player #{p.name} has lost #{delta} HP"
  end
end



o_1 = Observer1.new
o_2 = Observer2.new

p = Player.new("Alfred")
p.decrease_hp(5)
p.add_observers(o_1)

p.add_observers(o_2)
p.decrease_hp(2)