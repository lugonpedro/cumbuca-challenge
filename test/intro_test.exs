defmodule IntroTest do
  use ExUnit.Case
  doctest Intro

  test "intro type must show correct message" do
    assert Intro.type() == "Digite o nome do rei ou rainha e pressione Enter."
  end

  test "intro finish must show correct message" do
    assert Intro.finish() == "Ao terminar a lista apenas pressione Enter sem digitar nenhum nome."
  end

  test "intro upperlowercase must show correct message" do
    assert Intro.upperlowercase() ==
             "* Diferenças entre letras maiúsculas e minúsculas serão desconsideradas."
  end

  test "intro accent must show correct message" do
    assert Intro.accent() == "* Já acentuação será considerado como diferença entre os nomes."
  end
end
