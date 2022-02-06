defmodule TodoEx do
  @moduledoc """
  """
  alias TodoEx.{Create, List}

  defdelegate create(todo), to: Create, as: :execute
  defdelegate list(), to: List, as: :execute
end
