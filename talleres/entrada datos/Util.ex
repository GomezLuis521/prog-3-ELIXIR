defmodule Util do
  def mostrar_mensaje(mensaje) do
    mensaje
    |>IO.puts()
  end
  def ingresar(mensaje, :texto) do
    mensaje
    |> IO.gets()
    |> String.trim()
  end

  def ingresar(mensaje, :entero) do
    mensaje
    |> Util.ingresar(:texto)
    |> String.to_integer()
  end
  
end
