defmodule DesafioCli do
  def main(_args) do
    IO.puts(Intro.type())
    IO.puts(Intro.finish())
    IO.puts(Intro.upperlowercase())
    IO.puts(Intro.accent())

    list = GetNames.main([])

    IO.puts("Iniciando geração da lista...")
    IO.puts("")
    IO.puts("Essa é a lista real:")

    updated_list = ShowList.main(list)

    Enum.each(updated_list, fn name ->
      IO.puts(name)
    end)

    restart()
  end

  def restart do
    IO.puts("Deseja começar a lista novamente? (s/n)")
    option = IO.gets("> ") |> String.trim() |> String.upcase()

    if option == "S" do
      main(0)
    else
      System.halt(0)
    end
  end
end
