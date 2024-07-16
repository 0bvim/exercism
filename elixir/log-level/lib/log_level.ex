defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
      level == 0 and !legacy? -> :trace
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      level == 5 and !legacy? -> :fatal
      true -> :unknown
    end
    # Please implement the to_label/2 function
  end

  # def alert_recipient(level, legacy?) do
  #   # Please implement the alert_recipient/2 function
  # end
end

# trace
IO.puts(LogLevel.to_label(0, false))
IO.puts("#{LogLevel.to_label(0, true)}\n")

# debug
IO.puts(LogLevel.to_label(1, false))
IO.puts("#{LogLevel.to_label(1, true)}\n")

# info
IO.puts(LogLevel.to_label(2, false))
IO.puts("#{LogLevel.to_label(2, true)}\n")

# warning
IO.puts(LogLevel.to_label(3, false))
IO.puts("#{LogLevel.to_label(3, true)}\n")

# error
IO.puts(LogLevel.to_label(4, false))
IO.puts("#{LogLevel.to_label(4, true)}\n")

# fatal
IO.puts(LogLevel.to_label(5, false))
IO.puts("#{LogLevel.to_label(5, true)}\n")

# unknown
IO.puts(LogLevel.to_label(7, false))
IO.puts("#{LogLevel.to_label(8, true)}\n")
