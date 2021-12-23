defmodule Weather do
  @apikey "55e4c15bc410ea62a2c66a71473d6728"
  #city =[]
  @moduledoc """
  Documentation for `Weather`.
  """

  # @doc """
  # Hello world.

  # ## Examples

  #     iex> Weather.hello()
  #     :world

  # """
  # def hello do
  #   :dfwerfwerw
  # end

  def get_temp( [head ]) do

   url = "http://api.openweathermap.org/data/2.5/weather?q=#{[head]}&appid=#{@apikey}"
   %{body: body} = HTTPoison.get! url
   temp = body |> Jason.decode! |> Map.get("main") |> Map.get("temp")
   tempe = temp - 273
  end
  def get_hum(city) do
    url = "http://api.openweathermap.org/data/2.5/weather?q=#{city}&appid=#{@apikey}"
    %{body: body} = HTTPoison.get! url
    hum = body |> Jason.decode! |> Map.get("main") |> Map.get("humidity")

   end
end
