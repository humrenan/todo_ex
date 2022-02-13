defmodule TodoEx.TodosControllerTest do
  use TodoExWeb.ConnCase

  test "fails when invalid params", %{conn: conn} do
    assert %{"error" => _} =
             conn
             |> post("/api/todos/create", %{})
             |> json_response(400)
  end

  test "succeeds creating todo", %{conn: conn} do
    params = %{description: "fazer trabalho"}

    resp =
      conn
      |> post("/api/todos/create", params)
      |> json_response(200)

    assert %{"message" => "Todo created successfuly"} = resp
  end
end
