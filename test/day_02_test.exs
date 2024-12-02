defmodule Aoc2024.Day02Test do
  use ExUnit.Case

  test "[Day 2 | Part 1] Sample" do
    assert Aoc2024.Day02.part_1(Aoc2024.get_sample_data("day_02")) == 2
  end

  test "[Day 2 | Part 1] Input" do
    assert Aoc2024.Day02.part_1(Aoc2024.get_input_data("day_02")) == 411
  end

  test "[Day 2 | Part 2] Sample" do
    assert Aoc2024.Day02.part_2(Aoc2024.get_sample_data("day_02")) == 4
  end

  test "[Day 2 | Part 2] Input" do
    assert Aoc2024.Day02.part_2(Aoc2024.get_input_data("day_02")) == 465
  end
end
