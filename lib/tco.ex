defmodule Tco do
  def tco_map(f, [h|t]), do: [f.(h)] ++ tco_map(f, t)
  def tco_map(f, []), do: []

  def find_asm(module, fun) do
    module
    |> :code.which
    |> File.read!
    |> :beam_disasm.file
    |> elem(5)
    |> Enum.find(fn {_, ^fun, _, _, _} -> true
                 _ -> false end)
  end
end
