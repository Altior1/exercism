defmodule CollatzConjecture do
  require Integer
  @doc """
  calc/1 takes an integer and returns the number of steps required to get the
  number to 1 when following the rules:
    - if number is odd, multiply with 3 and add 1
    - if number is even, divide by 2
  """
  @spec calc(input :: pos_integer()) :: non_neg_integer()
  def calc(input) do
    syracus(input, 0)
  end

  defp syracus(0, steps), do: raise ArgumentError, "input must be a positive integer"
  defp syracus(input, steps) when input < 0, do: raise ArgumentError, "input must be a positive integer"
  defp syracus(1, steps), do: steps

  defp syracus(input, steps) when Integer.is_even(input) do
    syracus(div(input, 2), steps + 1)
  end

  defp syracus(input, steps) do
    syracus(3 * input + 1, steps + 1)
  end
end
