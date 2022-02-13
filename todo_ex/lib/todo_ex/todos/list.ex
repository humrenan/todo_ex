defmodule TodoEx.List do
  @moduledoc """
  List todos
  """
  alias TodoEx.Schemas.Todo
  alias TodoEx.Repo

  def execute() do
    todos = Todo |> Repo.all()

    {:ok, [todos]}
  end
end
