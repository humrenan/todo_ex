defmodule TodoEx.Create do
  @moduledoc """
  todo: add nice doc
  """
  alias TodoEx.Inputs.Todo
  alias TodoEx.Repo

  def execute(input) do
    # IO.inspect input

    case insert_todo(Repo, input) do
      {:ok, todo} -> {:ok, todo}
      _ -> {:error, "Failed creating todo"}
    end
  end

  def insert_todo(repo, input) do
    input
    |> Todo.changeset()
    |> repo.insert()
  end
end
