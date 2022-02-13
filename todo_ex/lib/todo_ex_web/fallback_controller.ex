defmodule TodoExWeb.FallbackController do
  use TodoExWeb, :controller

  def call(conn, {:error, result}) do
    conn
    |> put_status(:bad_request)
    |> put_view(TodoExWeb.ErrorView)
    |> render("400.json", result: result)
  end
end
