require 'minitest/autorun'
require_relative 'netthing'

class RequestWrapper
  def initialize(req)
    @req = req
  end
  def result
    if req.to_hash.key?("x-special-header")
      return "OK"
    end
    nil
  end
end


class NetThingTest < Minitest::Test
  def test_do_thing_no_param()
    nt = NetThing.new
    # DON'T WANT TO MAKE A REAL REQUEST HERE
    #req = Net::HTTP::Get.new('http://example.com/')
    req = RequestWrapper.new(nil)
    result = nt.do_thing(req)
    assert result == nil
  end

  def test_do_thing_with_param()
    nt = NetThing.new
    # DON'T WANT TO MAKE A REAL REQUEST HERE
    #req = Net::HTTP::Get.new('http://example.com/',
    #  {"x-special-header" => "Yes"})
    req = RequestWrapper.new({"x-special-header" => "Yes"})
    result = nt.do_thing(req)
    assert result == "OK"
  end
end