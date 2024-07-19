defmodule HighSchoolSweetheart do
  def first_letter(name) do
    String.first(String.trim(name))
  end

  def initial(name) do
    first_letter(String.upcase(name)) <> "."
  end

  def initials(full_name) do
    names = String.split(full_name)
    initial(List.first(names)) <> " " <> initial(List.last(names))
  end

  def pair(full_name1, full_name2) do
    n1 = initials(full_name1)
    n2 = initials(full_name2)
    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{n1}  +  #{n2}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
  # for who are crazy thing that you need to use IO.puts()... You don't need =D
  end
end
