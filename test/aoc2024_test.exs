defmodule Aoc2024Test do
  use ExUnit.Case

  test "Get sample data" do
    assert Aoc2024.get_sample_data("aoc2024") == ["sample_1", "sample_2", "sample_3"]
  end

  test "Get input data" do
    assert Aoc2024.get_input_data("aoc2024") == ["input_1", "input_2", "input_3"]
  end
end
