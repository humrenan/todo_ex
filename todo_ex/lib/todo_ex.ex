defmodule TodoEx do
  @moduledoc """
  """
  alias TodoEx.{Create, List}

  defdelegate create_todo(todo), to: Create, as: :execute
  defdelegate create_user(user), to: CreateUser, as: :execute
  defdelegate list(), to: List, as: :execute
end
