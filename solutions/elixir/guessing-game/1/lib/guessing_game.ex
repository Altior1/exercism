defmodule GuessingGame do
  def compare(_) do
    "Make a guess"
  end

  def compare(_, :no_guess) do
    "Make a guess"
  end

  def compare(secret_number, guess) when guess == secret_number do
    "Correct"
  end

  def compare(secret_number, guess) when Kernel.abs(guess - secret_number) < 2 do
    "So close"
  end

  def compare(secret_number, guess) when guess > secret_number do
    "Too high"
  end

  def compare(secret_number, guess) when guess < secret_number do
    "Too low"
  end

end
