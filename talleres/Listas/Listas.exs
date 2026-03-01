defmodule Clima do
  def descripcion(temperatura) do
    cond do
      not is_number(temperatura) ->
        "Temperatura inválida"

      true ->
        case temperatura do
          t when t < -10 -> "Extremadamente frío"
          t when t >= -10 and t < 0 -> "Muy frío"
          t when t >= 0 and t < 15 -> "Frío"
          t when t >= 15 and t < 25 -> "Templado"
          t when t >= 25 and t < 35 -> "Caluroso"
          t when t >= 35 -> "Extremadamente caluroso"
        end
    end
  end
end

# Uso:
IO.puts Clima.descripcion(28)
