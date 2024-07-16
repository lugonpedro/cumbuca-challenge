defmodule ShowList do
  def main(list) do
    Enum.with_index(list, fn name, index ->
      {list_before_index, _list_after_index} = Enum.split(list, index)
      quantity = Enum.count(list_before_index, fn el -> el == name end)
      IO.puts("#{name} #{RomanNumber.convert(quantity + 1)}")
    end)

    IO.puts("Essa é a sua lista real!")
    DesafioCli.restart()
  end
end
