defmodule WeatherTest do
  use ExUnit.Case
  doctest Weather

  # test "greets the world" do
  #   assert Weather.hello() == :world
  # end

  test "this will return the current temparature of the given city" do
    assert Weather.get_weather("New york") == 286.65
  end
end
