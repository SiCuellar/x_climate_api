require 'rails_helper'

describe "darksky service" do
  it "can return specific weather data for specfic coordinates" do
      city_forecast = DarkskyService.new.get_forcast(34.0195, -118.4912)

      expect(city_forecast).to be_a(Hash)
      expect(city_forecast).to have_key(:currently)
      expect(city_forecast).to have_key(:hourly)
      expect(city_forecast).to have_key(:daily)
  end
end
