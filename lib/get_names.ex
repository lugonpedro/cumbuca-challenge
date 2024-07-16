defmodule GetNames do
  def main(list) do
    name = IO.gets("Nome: ") |> String.trim() |> String.upcase()

    if name != "" do
      main(list ++ [name])
    else
      list
    end
  end
end
