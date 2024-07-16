defmodule DesafioCli do
  def main(_args) do
    Intro.main()
    GetNames.main([])
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
