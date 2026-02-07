# TODO: Denise Funk
# Exercise 5: Observer Pattern

class WeatherStation

  attr_accessor :temperature

  def initialize
    @temperature = 0
    @observers = []
  end

  def add_observer(observer)
    @observers << observer
  end

  def temperature=(new_temperature)
    @temperature = new_temperature
    @observers.each do |o|
      o.notify(self)
    end
  end

end

# TODO: Define a StationObserver class
#       A StationObserver should have one
#       method named notify.

class StationObserver
  def notify(weather_station)
    puts "weather station temperature #{weather_station.temperature}"
  end
end

weather_station = WeatherStation.new
# TODO: Add a new observer to the weather station
observer = StationObserver.new
weather_station.add_observer(observer)
weather_station.temperature = 72


#when temperature changes the observer is notified and prints the message