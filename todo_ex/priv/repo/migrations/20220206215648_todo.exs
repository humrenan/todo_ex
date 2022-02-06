defmodule TodoEx.Repo.Migrations.Todo do
  use Ecto.Migration

  def change do
    create table("todo", primary_key: false) do
      add :id, :uuid, primary_key: true
      add :description, :string
      add :state, :boolean

      timestamps()
    end
  end
end
