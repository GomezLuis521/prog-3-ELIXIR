defmodule EntradaDatos do
  def main do
    valor_total = "ingresar valor total:"
    |> Util.ingresar(:entero)

    valor_entregado = "ingresar valor entregado:"
    |> Util.ingresar(:entero)

    calcular_vuelto(valor_entregado,valor_total)
    |> generar_mensaje()
    |>Util.mostrar_mensaje()
  end
  defp ingresar(mensaje, :entero) do
    mensaje
    |> Util.ingresar(:texto)
    |> String.to_integer()
  end
  defp calcular_devuelta(valor_pago, valor_total) do
    valor_pago - valor_total
  end

  defp generar_mensaje(devuelta) do
    "El valor de devuelta es $ #{devuelta}"
  end
end

EntradaDatos.main()
