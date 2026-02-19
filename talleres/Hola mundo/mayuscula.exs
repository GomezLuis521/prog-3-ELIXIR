defmodule Mensaje do

  def convertir do
    # lee mensaje de java
    mensaje = IO.read(:line)
    |> String.trim()
    mensaje
    #convierte el mensaje en mayusculas
    |> String.upcase()
    #lo devuelve a java
    |> IO.puts()
  end
end

Mensaje.convertir()
