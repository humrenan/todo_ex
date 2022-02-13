defmodule TodoEx.ListTest do
  use TodoEx.DataCase
  alias alias TodoEx.Inputs.Create

  test "succeeds listing todos" do
    todos =
      Enum.map([1, 2, 3, 4, 5], fn num ->
        TodoEx.create_todo(%Create{description: "todo_#{num}"})
      end)

    resp = TodoEx.list()
    assert length(todos) == length(resp)
  end
end
