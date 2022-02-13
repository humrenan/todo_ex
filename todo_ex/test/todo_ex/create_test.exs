defmodule TodoEx.CreateTest do
  use TodoEx.DataCase

  alias TodoEx.Inputs.Create
  alias TodoEx.Schemas.Todo

  test "succeeds creating todos" do
    assert {:ok, %Todo{}} = TodoEx.create_todo(%Create{description: "eae"})
  end
end
