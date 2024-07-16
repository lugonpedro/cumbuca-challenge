defmodule RomanNumberTest do
  use ExUnit.Case
  doctest RomanNumber

  test "roman number must return I" do
    assert RomanNumber.convert(1) == "I"
  end

  test "roman number must return V" do
    assert RomanNumber.convert(5) == "V"
  end

  test "roman number must return X" do
    assert RomanNumber.convert(10) == "X"
  end

  test "roman number must return L" do
    assert RomanNumber.convert(50) == "L"
  end

  test "roman number must return C" do
    assert RomanNumber.convert(100) == "C"
  end

  test "roman number must return D" do
    assert RomanNumber.convert(500) == "D"
  end

  test "roman number must return M" do
    assert RomanNumber.convert(1000) == "M"
  end
end
