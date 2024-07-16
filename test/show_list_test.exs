defmodule ShowListTest do
  use ExUnit.Case
  doctest ShowList

  test "show list must show in order of array" do
    assert ShowList.main(["Test", "Teste", "Test"]) == ["Test I", "Teste I", "Test II"]
  end
end
