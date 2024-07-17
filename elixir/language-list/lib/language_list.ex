defmodule LanguageList do
  def new() do
    _empty_list = []
  end

  def add(list, language) do
    [language | list]
  end

  def remove(list) do
    List.delete_at(list, 0)
  end

  def first(list) do
    List.first(list)
  end

  def count(list) do
    _size = length(list)
  end

  def functional_list?(list) do
    Enum.member?(list, "Elixir")
  end
end
