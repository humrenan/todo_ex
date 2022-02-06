defmodule TodoEx.CreateTest do
  use TodoEx.DataCase
  alias TodoEx.Inputs.Todo

  test "succeeds creating todos" do
    assert {:ok, %Todo{}} = TodoEx.create(%{description: "eae"})
  end
end
