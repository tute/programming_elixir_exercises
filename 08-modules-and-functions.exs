# Write a function that takes both lists and returns a copy of the orders, but
# with an extra field, total_amount, which is the net plus sales tax. If a
# shipment is not to NC or TX, there’s no tax applied.

defmodule Doit do
  @tax_rates [NC: 0.075, TX: 0.08]

  def add_total_amount(row) do
    tax = 1 + (@tax_rates[row[:ship_to]] || 0)
    row |> Enum.concat([total_amount: row[:net_amount] * tax])
  end
end

orders = [
  [id: 123, ship_to: :NC, net_amount: 100.00],
  [id: 124, ship_to: :OK, net_amount:  35.50],
  [id: 125, ship_to: :TX, net_amount:  24.00],
  [id: 126, ship_to: :TX, net_amount:  44.80],
  [id: 127, ship_to: :NC, net_amount:  25.00],
  [id: 128, ship_to: :MA, net_amount:  10.00],
  [id: 129, ship_to: :CA, net_amount: 102.00],
  [id: 120, ship_to: :NC, net_amount:  50.00]
]
IO.inspect(orders |> Enum.map(&(&1 |> Doit.add_total_amount)))

