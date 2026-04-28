defmodule Contador do
  def iniciar(n) do
    spawn(fn -> contar(1, n) end)
  end

  defp contar(actual, limite) when actual > limite do
    IO.puts("Terminé")
  end

  defp contar(actual, limite) do
    IO.puts(actual)
    :timer.sleep(500)
    contar(actual + 1, limite)
  end
end

Contador.iniciar(5)

:timer.sleep(3000)
