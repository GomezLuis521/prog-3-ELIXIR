defmodule Lista do
  
  def sumar([]), do: 0

  def sumar([head | tail]) do
    head + sumar(tail)
  end
end

IO.inspect(Lista.sumar([1, 2, 3, 4, 5]))
