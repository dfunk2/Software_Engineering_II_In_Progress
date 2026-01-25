class IceBoxRefrigerator

  attr_reader :height, :width, :depth

  def initialize(height = 0, width = 0, depth = 0)
    @height = height
    @width = width
    @depth = depth
  end

  def add(beverage)
  end
end

class BrokenRefrigerator

  attr_reader :height, :width, :depth

  def initialize(height = 0, width = 0, depth = 0)
    @height = height
    @width = width
    @depth = depth
  end

  def add(drink)
  end

end

class RootBeer; end
class Kombucha; end

class Kitchen

  def initialize(refrigerator)
    @refrigerator = refrigerator
  end

  def add_beer_to_refrigerator
    add_beverage("rootbeer")
  end

  def to_s
    fridge_volume = @refrigerator.height * @refrigerator.width * @refrigerator.depth
    fridge_volume_gallons = fridge_volume * 7.48052
    "Kitchen. Fridge volume = #{fridge_volume_gallons} gallons"
  end

  def add_beverage(beverage)
    @refrigerator.add(beverage)
  end

end

# Current usage example:
icebox = IceBoxRefrigerator.new
rootbeer = RootBeer.new
kitchen = Kitchen.new(icebox)
kitchen.add_beer_to_refrigerator
puts kitchen

icebox2 = BrokenRefrigerator.new
kombucha_drink = Kombucha.new
kitchen2 = Kitchen.new(icebox2)
kitchen2.add_beverage(kombucha_drink)
puts kitchen2

# kitchen has an IceBoxRefrigerator with a RootBeer in it.

# Problem: you can't create a kitchen with a different fridge, and you can't
#          add any beverage other than beer.

# Goal: Create a kitchen with a BrokenRefrigerator, and add Kombucha to it.

