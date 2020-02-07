require 'rails_helper'

describe "darksky service" do
  it "can return specific weather data for specfic coordinates" do

      city_forecast = DarkskyService.new.get_forcast(39.7392358, -104.990251)
  end
end
