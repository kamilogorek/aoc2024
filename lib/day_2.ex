defmodule Aoc2024.Day2 do
  defp is_safe_report([a, a | _]), do: false

  defp is_safe_report([a, b | _] = levels) do
    sign = div(a - b, abs(a - b))
    is_safe_report(levels, sign)
  end

  defp is_safe_report(levels, sign) do
    Enum.chunk_every(levels, 2, 1, :discard)
    |> Enum.all?(fn [a, b] -> (sign * (a - b)) in 1..3 end)
  end

  defp is_somewhat_safe_report(levels) do
    is_safe_report(levels) or is_somewhat_safe_report(levels, 0)
  end

  defp is_somewhat_safe_report(levels, faulty_idx) when faulty_idx >= length(levels), do: false

  defp is_somewhat_safe_report(levels, faulty_idx) do
    is_safe_report(List.delete_at(levels, faulty_idx)) or
      is_somewhat_safe_report(levels, faulty_idx + 1)
  end

  def part_1(input) do
    prepare_input(input)
    |> Enum.count(&is_safe_report/1)
  end

  def part_2(input) do
    prepare_input(input)
    |> Enum.count(&is_somewhat_safe_report/1)
  end

  defp prepare_input(input) do
    Enum.map(input, fn line ->
      String.split(line, " ", trim: true) |> Enum.map(&String.to_integer/1)
    end)
  end
end
