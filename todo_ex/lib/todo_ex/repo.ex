defmodule TodoEx.Repo do
  use Ecto.Repo,
    otp_app: :todo_ex,
    adapter: Ecto.Adapters.Postgres
end
