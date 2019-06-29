# In your application code
defmodule MinimalUuidCastError.ResourceOne do
  use Ecto.Schema

  @primary_key {:id, Ecto.UUID, []}
  schema "resource_one" do
  end
end

defmodule MinimalUuidCastError.ResourceTwo do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, Ecto.UUID, autogenerate: true}
  schema "resource_two" do
    field(:resource_one_id, {:map, Ecto.UUID})
  end

  @doc false
  def changeset(attrs) do
    %__MODULE__{}
    |> cast(attrs, [:id, :resource_one_id])
  end
end

defmodule MinimalUuidCastError do
  @moduledoc false
end
