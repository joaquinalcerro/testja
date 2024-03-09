defmodule Testja do
  @moduledoc """
  DCNEARSHORE
  Prueba tecnica - Joaquin Alcerro
  """

  require Integer

  @doc """
  Esta funcion determina si el elemento proporcionado es un
  numero entero par o inpar.

  ## Examples

      iex> Testja.is_par_or_impar(24)
      "El numero es par"

  """
  def is_par_or_impar(numero) do
    with true <- is_number(numero),
         false <- is_float(numero),
         true <- numero >=0 do

      numero |> Integer.is_even() |> even_or_odd()

    else
      _ -> "Caracter invalido"
    end
  end

  defp even_or_odd(true), do: "El numero es par"
  defp even_or_odd(_), do: "El numero es inpar"

  @doc """
  Esta funcion suma todo los elmentos que son numero en un arreglo
  pero ignora cualquier elmento que no sea un numero.

  ## Examples

      iex> Testja.suma_arreglo([2,3])
      5

      iex> Testja.suma_arreglo([2,3,"texto"])
      5

  """
  def suma_arreglo(arreglo), do: Enum.reduce(arreglo, 0, fn num, acc -> add_number(num, acc) end)

  defp add_number(num, acc) when is_number(num), do: num + acc
  defp add_number(_num, acc), do: acc

  @doc """
  Esta funcion busca el string mas largo dentro de un arreglo.
  En caso de que un elemento del arreglo no sea string, lo ignora

  ## Examples

      iex> Testja.find_longest_string(["Test","Second Test", "Third test of text"])
      "Third test of text"

      iex> Testja.find_longest_string([25, 34, "Test","Second Test", "Third test of text"])
      "Third test of text"

  """
  def find_longest_string(arreglo) do
    arreglo
    |> Stream.filter(fn s -> is_bitstring(s) end)
    |> Enum.max_by(fn s -> String.length(s) end)
  end
end
