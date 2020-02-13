require 'rails_helper'

describe 'forecast organizer' do
  it "can organize all inforamtion needed for a forecaset page" do
    location = "Denver, CO"
    forecast_organizer = ForecastOrganizer.new(location)

    expect(forecast_organizer.current_weather).to be_an_instance_of(CurrentWeather)
    expect(forecast_organizer.current_weather).to be_an_instance_of(CurrentWeather)
  end
end
