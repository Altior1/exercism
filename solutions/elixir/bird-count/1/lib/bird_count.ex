defmodule BirdCount do

  def today([]), do: nil

  def today([hd | _]) do
    hd
  end

  def increment_day_count([]), do: [1]

  def increment_day_count([hd | tl]) do
    [hd + 1 | tl]
  end

  def has_day_without_birds?(list) do
    Enum.any?(list, fn count -> count == 0 end)
  end

  def total(list) do
    Enum.sum(list)
  end

  def busy_days(list) do
    Enum.count(list, fn count -> count >= 5 end)
  end
end
