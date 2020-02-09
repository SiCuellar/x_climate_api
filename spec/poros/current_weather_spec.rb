require 'rails_helper'

describe "Current Weather" do
  it "can return current weather for a specific day" do
    current_weather_data = {:time=>1551057186, :summary=>"Clear", :icon=>"clear-night", :nearestStormDistance=>210, :nearestStormBearing=>327,
                            :precipIntensity=>0, :precipProbability=>0, :temperature=>39.21, :apparentTemperature=>34.97, :dewPoint=>11.96,
                            :humidity=>0.32, :pressure=>1018.92, :windSpeed=>5.86, :windGust=>9.21,
                            :windBearing=>121, :cloudCover=>0.1, :uvIndex=>0, :visibility=>10, :ozone=>312.54}

    current_weather = CurrentWeather.new(current_weather_data)

    expect(current_weather).to be_an_instance_of(CurrentWeather)
    expect(current_weather.time).to eq(1551057186)
    expect(current_weather.summary).to eq("Clear")
    expect(current_weather.precip).to eq(0)
    expect(current_weather.temp).to eq(39.21)
    expect(current_weather.temp_feel_like).to eq(34.97)
    expect(current_weather.humidity).to eq(0.32)
    expect(current_weather.uv_index).to eq(0)
    expect(current_weather.visibility).to eq(10)
  end
end
