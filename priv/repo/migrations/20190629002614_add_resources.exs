defmodule MinimalUuidCastError.Repo.Migrations.AddResources do
  use Ecto.Migration

  def change do
    create table(:resource_two) do
      add(:resource_one_id, :map)
    end
  end
end
