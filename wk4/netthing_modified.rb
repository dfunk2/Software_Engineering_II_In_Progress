require 'net/http'

class NetThing
  def do_thing(req_wrapper)
    request_wrapper.result
  end
end

if __FILE__ == $0
  # Run this stuff if this file is executed directly
  # but not if it is `require`d

  nt = NetThing.new

  req1 = Net::HTTP::Get.new('http://example.com/')
  wrapper1 = RequestWrapper.new(req1)
  pp nt.do_thing(wrapper1)   # gives us return result which is nil

  req2 = Net::HTTP::Get.new('http://example.com/',
    {"x-special-header" => "Yes"})
    wrapper2 = RequestWrapper.new(req2)
  pp nt.do_thing(wrapper2)   # "OK"
end