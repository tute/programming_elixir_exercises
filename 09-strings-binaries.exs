# Write a function that returns true if a single-quoted string contains only
# printable ASCII characters (space through tilde)
'abc' |> to_string |> String.printable?

# Write an anagram?(word1, word2) that returns true if its parameters are
# anagrams.
defmodule Doit do
  def anagram?(word1, word2) do
    sorted_characters(word1) == sorted_characters(word2)
  end

  defp sorted_characters(word) do
    word |> String.split("") |> Enum.sort
  end
end

# Try the following in iex: ['dog' | 'cat']. Why does iex print ’cat’ as a
# string, but 'dog' as individual numbers?
"""
'cat' is flattened into a list, whose elements contain the list of characters
'dog'. That element can be interpreted as a string, but a containing list
cannot.
"""

# (Hard) Write a function that takes a single-quoted string of the form number
# [+-*/] number and returns the result of the calculation. The individual
# numbers do not have leading plus or minus signs.
# calculate(’123 + 27’) # => 150
