defmodule LogLevel do
  def to_label(level, true) when level in 1..4 do
    case level do
      1 -> :debug
      2 -> :info
      3 -> :warning
      4 -> :error
    end
  end

  def to_label(level, false) when level in 0..5 do
    case level do
      0 -> :trace
      1 -> :debug
      2 -> :info
      3 -> :warning
      4 -> :error
      5 -> :fatal
    end
  end

  def to_label(_, _) do
    :unknown
  end

  def alert_recipient(level, legacy?) do
    case to_label(level, legacy?) do
      :error -> :ops
      :fatal -> :ops
      :unknown -> if legacy?, do: :dev1, else: :dev2
      _ -> false
    end
  end
end
