defmodule Rules do
  def eat_ghost?(true, touching_ghost?) do
    touching_ghost?
  end

  def eat_ghost?(_, _) do
    false
  end

  def score?(true, _) do
    true
  end

  def score?(_, true) do
    true
  end

  def score?(_, _) do
    false
  end

  def lose?(false, true) do
    true
  end

  def lose?(_, _) do
    false
  end

  def win?(true, false, true) do
    false
  end

  def win?(true, _, _) do
    true
  end

  def win?(_, true, touching_ghost?) do
    touching_ghost?
  end

  def win?(_, _, _) do
    false
  end
end
