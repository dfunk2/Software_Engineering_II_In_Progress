# adder.rb

# Not allowed to modify this file!

class AdderThing
  def very_expensive_method
    # Pretend this does something real
    sleep(10)
    raise "Failed to connect to adder server"
  end

  def adder(a, b)
    very_expensive_method()
    a + b
  end
end

# Production code:

if __FILE__ == $0
  at = AdderThing.new()
  puts at.adder(3, 7)
end

# test_adder.rb

require 'minitest/autorun'
require_relative 'adder'

# For the challenge, don't modify anything in the AdderTest class:

class AdderTest < Minitest::Test
  def test_addr()
    at = AdderThing.new
    assert(at.adder(2, 3) == 5)
    assert(at.adder(-20, 19) == -1)
    assert(at.adder(0, 0) == 0)
  end
end