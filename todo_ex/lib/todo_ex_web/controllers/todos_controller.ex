defmodule TodoExWeb.TodosController do
  use TodoExWeb, :controller

  alias TodoEx.Inputs
  alias TodoEx.Schemas.Todo
  alias TodoExWeb.InputValidation

  action_fallback TodoExWeb.FallbackController

  def create(conn, params) do
    with {:ok, input} <- InputValidation.cast_and_apply(params, Inputs.Create),
         {:ok, %Todo{} = todo} <- TodoEx.create_todo(input) do
      conn
      |> put_status(200)
      |> render("create.json", todo: todo)

     end
    

     
  end
end
