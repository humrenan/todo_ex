defmodule TodoEx.List do
  @moduledoc """
  todo: add nice doc
  """
  alias TodoEx.Inputs.Todo
  alias TodoEx.Repo

  def execute() do
    Todo |> Repo.all()
  end
end
