defmodule FizzBuzz do
  def s(0,0,_), do: "FizzBuzz"
  def s(0,_,_), do: "Fizz"
  def s(_,0,_), do: "Buzz"
  def s(_,_,n), do: n

  def n(n), do: IO.puts s(rem(n, 3), rem(n, 5), n)
end

FizzBuzz.n 10
FizzBuzz.n 11
FizzBuzz.n 12
FizzBuzz.n 13
FizzBuzz.n 14
FizzBuzz.n 15
FizzBuzz.n 16
