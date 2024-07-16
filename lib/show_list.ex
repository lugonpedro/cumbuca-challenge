defmodule ShowList do
  def main(list) do
    updated_list =
      Enum.with_index(list)
      |> Enum.map(fn {name, index} ->
        {list_before_index, _list_after_index} = Enum.split(list, index)
        quantity = Enum.count(list_before_index, fn el -> el == name end)
        "#{name} #{RomanNumber.convert(quantity + 1)}"
      end)

    updated_list
  end
end
