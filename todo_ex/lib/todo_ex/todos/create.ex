defmodule TodoEx.Create do
  @moduledoc """
  todo: add nice doc
  """
  alias TodoEx.Schemas.Todo
  alias TodoEx.Inputs
  alias TodoEx.Repo

  require Logger

  def execute(%Inputs.Create{} = input) do
    Logger.info("Creating new Todo")

    params = %{description: input.description, state: input.state}

    with %{valid?: true} = changeset <- Todo.changeset(params),
         {:ok, todo} <- Repo.insert(changeset) do
      Logger.info("Todo successfully created! Todo: #{todo.description}")
      {:ok, todo}
    else
      %{valid?: false} = changeset ->
        Logger.error("Error while creating new todo. Error: #{inspect(changeset)}")
        {:error, changeset}
    end
  end
end
