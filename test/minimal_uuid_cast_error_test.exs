defmodule MinimalUuidCastErrorTest do
  use ExUnit.Case
  doctest MinimalUuidCastError

  alias MinimalUuidCastError.Repo
  alias MinimalUuidCastError.ResourceTwo

  test "throws the cast error" do
    uuid = Ecto.UUID.generate() |> IO.inspect()

    {:ok, two} =
      %{resource_one_id: %{my_key: uuid}}
      |> MinimalUuidCastError.ResourceTwo.changeset()
      |> Repo.insert()

    Repo.all(MinimalUuidCastError.ResourceTwo)
    fetched = Repo.get(MinimalUuidCastError.ResourceTwo, two.id) |> IO.inspect()
    assert fetched.id == two.id
  end
end
