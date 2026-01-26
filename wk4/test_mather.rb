require_relative "mather.rb"
require "minitest/autorun"

class TestMather < Minitest::Test

  def test_sum
    m = Mather.new(1, 2)
    assert_equal 3, m.sum
  end

  def test_difference
    m = Mather.new(1, 2)
    assert_equal(-1, m.difference)
  end

  def test_quotient
    m = Mather.new(1, 2)
    assert_equal(1/2, m.quotient)
  end

  def test_quotient_negative
    m = Mather.new(-2, 2)
    assert_equal(-1, m.quotient)
  end

  def test_quotient_by_0
    m = Mather.new(2, 0)
    assert_equal(0, m.quotient)
  end

end

