# Write a flatten(list) function that takes a list that may contain any number
# of sublists, which themselves may contain sublists, to any depth. It returns
# the elements of these lists as a flat list.

defmodule MyList do
  def flatten([x|t]), do: flatten(x) ++ flatten(t)
  def flatten([]), do: []
  def flatten(e), do: [e]
end

IO.inspect MyList.flatten([ 1, [ 2, 3, [4] ], 5, [[[6]]]])
