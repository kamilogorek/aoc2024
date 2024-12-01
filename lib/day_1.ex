defmodule Aoc2024.Day1 do
  def part_1(input) do
    prepare_input(input)
    |> Enum.zip()
    |> Enum.map(fn x -> Tuple.to_list(x) |> Enum.sort() end)
    |> Enum.zip()
    |> Enum.map(fn {left, right} -> abs(left - right) end)
    |> Enum.sum()
  end

  def part_2(input) do
    [left, right] =
      prepare_input(input)
      |> Enum.zip()
      |> Enum.map(&Tuple.to_list/1)

    freq = Enum.frequencies(right)

    Enum.map(left, &(&1 * Map.get(freq, &1, 0))) |> Enum.sum()
  end

  defp prepare_input(input) do
    Enum.map(input, fn line ->
      String.split(line, " ", trim: true) |> Enum.map(&String.to_integer/1)
    end)
  end
end
