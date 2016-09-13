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
#   'cat' is flattened into a list, whose elements contain the list of
#   characters 'dog'. That element can be interpreted as a string, but a
#   containing list cannot.

# TODO
#
# (Hard) Write a function that takes a single-quoted string of the form
# `number [+-*/] number` and returns the result of the calculation. The
# individual numbers do not have leading plus or minus signs.
# calculate('123 + 27') # => 150
defmodule Hard do
  def calculate() do
  end
end

# Write a function to capitalize the sentences in a string. Each sentence is
# terminated by a period and a space. Right now, the case of the characters in
# the string is random.
#
# iex> capitalize_sentences("oh. a DOG. woof. ")
# "Oh. A dog. Woof. "
defmodule CapitalizeSentences do
  def capitalize(sentences) do
    sentences
    |> String.split(". ")
    |> Enum.map(&String.capitalize/1)
    |> Enum.join(". ")
  end
end

# Chapter 7, Lists and Recursion, had an exercise about calculating sales tax.
# We now have the sales information in a file of comma-separated id, ship_to,
# and amount values. The file looks like this (09-fixture.csv):
#
# id,ship_to,net_amount
# 123,:NC,100.00
# 124,:OK,35.50
# 125,:TX,24.00
# 126,:TX,44.80
# 127,:NC,25.00
# 128,:MA,10.00
# 129,:CA,102.00
# 120,:NC,50.00
#
# Write a function that reads and parses this file and then passes the result to
# the sales_tax function. Remember that the data should be formatted into a
# keyword list, and that the fields need to be the correct types (so the id
# field is an integer, and so on).
#
# You’ll need the library functions File.open, IO.read(file, :line), and
# IO.stream(file).
