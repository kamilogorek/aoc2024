defmodule Aoc2024 do
  def get_sample_data(filename) do
    load_data_file(filename <> ".sample")
  end

  def get_input_data(filename) do
    load_data_file(filename <> ".input")
  end

  defp load_data_file(filename) do
    Path.join(__DIR__, filename)
    |> File.read!()
    |> String.trim()
    |> String.split("\n", trim: true)
  end
end
