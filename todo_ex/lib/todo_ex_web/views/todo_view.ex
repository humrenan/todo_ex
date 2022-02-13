defmodule TodoExWeb.TodosView do
  use TodoExWeb, :view
  alias TodoEx.Schemas.Todo

  def render("create.json", %{
        todo: %Todo{
          description: description,
          state: state,
          inserted_at: inserted_at
        }
      }) do
    %{
      message: "Todo created successfuly",
      todo: description,
      done?: state,
      inserted_at: inserted_at
    }
  end
end
