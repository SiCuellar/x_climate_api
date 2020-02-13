class ForecastOrganizer
  attr_reader :location

  def initialize(location)
    @location = location
    coordinates = GoogleMapsService.new.get_coordinates(location)
    @weather_data = DarkskyService.new.get_forcast(coordinates[:lat], coordinates[:lng])
  end

  def current_weather
    CurrentWeather.new(@weather_data[:currently])
  end
end 
