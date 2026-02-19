defmodule EntradaReales do
  def main do
    valor_producto =
      "Ingrese el valor del producto: "
      |> MiUtil.ingresar(:entero)

    porcentaje_descuento =
      "Ingrese el porcentaje de descuento: "
      |> MiUtil.ingresar(:real)

    valor_descuento =
      MiUtil.calcular_valor_descuento(valor_producto, porcentaje_descuento)

    valor_final =
      MiUtil.calcular_valor_final(valor_producto, valor_descuento)

    MiUtil.generar_mensaje(valor_descuento, valor_final)
    |> MiUtil.mostrar_mensaje()
  end
end

EntradaReales.main()
