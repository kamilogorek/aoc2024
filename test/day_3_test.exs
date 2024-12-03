defmodule Aoc2024.Day3Test do
  use ExUnit.Case

  test "[Day 3 | Part 1] Sample" do
    assert Aoc2024.Day3.part_1(Aoc2024.get_sample_data("day_3")) == 161
  end

  test "[Day 3 | Part 1] Input" do
    assert Aoc2024.Day3.part_1(Aoc2024.get_input_data("day_3")) == 175_015_740
  end

  test "[Day 3 | Part 2] Sample" do
    assert Aoc2024.Day3.part_2(Aoc2024.get_sample_data("day_3")) == 48
  end

  test "[Day 3 | Part 2] Input" do
    assert Aoc2024.Day3.part_2(Aoc2024.get_input_data("day_3")) == 112_272_912
  end
end
