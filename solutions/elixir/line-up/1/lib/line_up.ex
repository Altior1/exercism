defmodule LineUp do
  @doc """
  Formats a full ticket sentence for the given name and number, including
  the person's name, the ordinal form of the number, and fixed descriptive text.
  """
  @spec format(name :: String.t(), number :: pos_integer()) :: String.t()
  def format(name, number) do
    "#{name}, you are the #{ordinal(number)} customer we serve today. Thank you!"
  end

  defp ordinal(number) do
    case rem(number, 10) do
      1 when rem(number, 100) != 11 -> "#{number}st"
      2 when rem(number, 100) != 12 -> "#{number}nd"
      3 when rem(number, 100) != 13 -> "#{number}rd"
      _ -> "#{number}th"
    end
  end
end
