# Implement the following Enum functions using no library functions or list
# comprehensions: all?, each, filter, split, and take

defmodule MyList do
  def all?([x], f), do: f.(x)
  def all?([h|t], f), do: f.(h) && all?(t,f)

  def any?([x], f), do: f.(x)
  def any?([h|t], f), do: f.(h) || any?(t,f)

  def each([],_) do; end
  def each([x|t], f) do
    f.(x)
    each(t,f)
  end

  def filter([],_), do: []
  def filter([h|t], f) do
    (if f.(h), do: [], else: [h]) ++ filter(t,f)
  end

  def split(l, n), do: _split([], l, n)
  def _split(l1, l2, 0), do: {l1, l2}
  def _split(l, [], _), do: {l, []}
  def _split(l, [h|t], n), do: _split(l ++ [h], t, n-1)

  def take(_, 0), do: []
  def take([],_), do: []
  def take([h|t], n), do: [h] ++ take(t, n-1)
end

IO.inspect MyList.take([1,2,3,4,5], 4)
