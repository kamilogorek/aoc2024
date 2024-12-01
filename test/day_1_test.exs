defmodule Aoc2024.Day1Test do
  use ExUnit.Case

  test "[Day 1 | Part 1] Sample" do
    assert Aoc2024.Day1.part_1(Aoc2024.get_sample_data("day_1")) == 11
  end

  test "[Day 1 | Part 1] Input" do
    assert Aoc2024.Day1.part_1(Aoc2024.get_input_data("day_1")) == 2_196_996
  end

  test "[Day 1 | Part 2] Sample" do
    assert Aoc2024.Day1.part_2(Aoc2024.get_sample_data("day_1")) == 31
  end

  test "[Day 1 | Part 2] Input" do
    assert Aoc2024.Day1.part_2(Aoc2024.get_input_data("day_1")) == 23_655_822
  end
end
