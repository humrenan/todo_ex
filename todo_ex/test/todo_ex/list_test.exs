defmodule TodoEx.ListTest do
  use TodoEx.DataCase

  test "succeeds listing todos" do
    todos =
      Enum.map([1, 2, 3, 4, 5], fn num ->
        TodoEx.create(%{description: "todo_#{num}"})
      end)

    resp = TodoEx.list()
    assert length(todos) == length(resp)
  end
end
