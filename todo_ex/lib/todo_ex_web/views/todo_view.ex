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

  def render("list.json", %{todos: [todos]}) do
    %{todos: render_many(todos, __MODULE__, "todos.json")}
  end

  def render("todos.json", %{
        todos: %Todo{description: description, state: state, id: id}
      }) do
    %{todo: description, done?: state, id: id}
  end
end
