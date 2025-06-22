defmodule Username do
  def sanitize(username) do
    username
    |> Enum.flat_map(&replace_umlaut/1)
    |> Enum.filter(&(&1 in ?a..?z or &1 == ?_))
  end

  defp replace_umlaut(char) do
    case char do
      ?ä -> ~c"ae"
      ?ö -> ~c"oe"
      ?ü -> ~c"ue"
      ?ß -> ~c"ss"
      _ -> [char]
    end
  end
end
