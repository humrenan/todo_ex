defmodule TodoEx.Schemas.Todo do
  @moduledoc """

  """
  use Ecto.Schema
  import Ecto.Changeset

  @required [:description]
  @optional [:state]

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "todos" do
    field :description, :string
    field :state, :boolean, default: false

    timestamps()
  end

  def changeset(model \\ %__MODULE__{}, params) do
    model
    |> cast(params, @required ++ @optional)
    |> validate_required(@required)
  end
end
