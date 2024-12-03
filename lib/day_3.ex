defmodule Aoc2024.Day3 do
  def part_1(input) do
    re = ~r/mul\((\d{1,3}),(\d{1,3})\)/

    Enum.join(input, " ")
    |> then(&Regex.scan(re, &1))
    |> collect_results()
  end

  def part_2(input) do
    re = ~r/mul\((\d{1,3}),(\d{1,3})\)|do\(\)|don't\(\)/

    Enum.join(input, " ")
    |> then(&Regex.scan(re, &1))
    |> collect_results()
  end

  defp collect_results(input, acc \\ 0, state \\ :do)
  defp collect_results([], acc, _state), do: acc

  defp collect_results([op | rest], acc, state) do
    case op do
      [_, a, b] ->
        case state do
          :do ->
            collect_results(rest, acc + String.to_integer(a) * String.to_integer(b), state)

          :dont ->
            collect_results(rest, acc, state)
        end

      ["do()"] ->
        collect_results(rest, acc, :do)

      ["don't()"] ->
        collect_results(rest, acc, :dont)
    end
  end
end
