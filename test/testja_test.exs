defmodule TestjaTest do
  use ExUnit.Case
  doctest Testja

  test "Par test" do
    assert Testja.is_par_or_impar(24) == "El numero es par"
  end

  test "inpar test" do
    assert Testja.is_par_or_impar(23) == "El numero es inpar"
  end

  test "suma numeros en arreglo - solo numeros" do
    assert Testja.suma_arreglo([1,2,3,4,5,6]) == 21
  end

  test "suma numeros en arreglo - con otros elementos" do
    assert Testja.suma_arreglo([1,2,3,4,5,6,"texto",{10,50}]) == 21
  end

  test "busca string mas largo en arreglo - solo strings" do
    assert Testja.find_longest_string(["Prueba", "Prueba Prueba", "String mas largo"]) == "String mas largo"
  end

  test "busca string mas largo en arreglo - con otros elementos" do
    arreglo = [23, {10, "test"}, %{key: "prueba"}, "Prueba", "Prueba Prueba", "String mas largo"]
    assert Testja.find_longest_string(arreglo) == "String mas largo"
  end

end
