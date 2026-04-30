defmodule Matriz do

  def main do
    matriz = [
      [60, 22, 41, 5],
      [13, 33, 44, 5],
      [89, 10, 100, 99],
      [5, 101, 6, 34]
    ]

    parent = self()

    # t1
    spawn(fn ->
      suma =
        matriz
        |> Enum.with_index()
        |> Enum.reduce(0, fn {fila, i}, acc ->
          fila
          |> Enum.with_index()
          |> Enum.reduce(acc, fn {valor, j}, acc2 ->
            if i > j, do: acc2 + valor, else: acc2
          end)
        end)

      send(parent, {:t1, suma})
    end)

    # t2
    spawn(fn ->
      {suma, total} =
        matriz
        |> List.flatten()
        |> Enum.reduce({0, 0}, fn x, {acc, count} ->
          {acc + x, count + 1}
        end)

      send(parent, {:t2, suma / total})
    end)

    # recibir ambos sin importar el orden
    {a, b} = recibir_resultados(nil, nil)

    c = a * b

    IO.puts("S1: suma de la diagonal principal #{a}")
    IO.puts("S2: promedio #{b}")
    IO.puts("C: #{c}")
  end

  defp recibir_resultados(a, b) when not is_nil(a) and not is_nil(b), do: {a, b}

  defp recibir_resultados(a, b) do
    receive do
      {:t1, resultado} -> recibir_resultados(resultado, b)
      {:t2, resultado} -> recibir_resultados(a, resultado)
    end
  end

end

Matriz.main()
