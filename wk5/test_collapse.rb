# test_collapse.rb

require "minitest/autorun"
require_relative "collapse"

class TestCollapse < Minitest::Test
  def test_collapses_run_of_letter
    assert_equal "fo", collapse("fooooooo", "o") #normal case 
    assert_equal "ggo", collapse("ggo", "g") #first letter causes failure
    assert_equal "soii", collapse("soii", "i") #last letter passes

  end
end