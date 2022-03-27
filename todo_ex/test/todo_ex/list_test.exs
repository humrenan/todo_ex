defmodule TodoEx.ListTest do
  use TodoEx.DataCase
  alias alias TodoEx.Inputs.Create

  test "succeeds listing todos" do
    todos =
      Enum.map(1..5, fn num ->
        TodoEx.create_todo(%Create{description: "todo-#{num}"})
      end)

    {:ok, resp} = TodoEx.list()
    assert length(todos) == length(resp)
  end
end
