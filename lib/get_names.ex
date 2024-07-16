defmodule GetNames do
  def main(list) do
    name = IO.gets("Nome: ") |> String.trim() |> String.upcase()

    if name == "" do
      ShowList.main(list)
    else
      main(list ++ [name])
    end
  end
end
