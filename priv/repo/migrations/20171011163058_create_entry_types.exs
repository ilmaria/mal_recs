defmodule MalRecs.Repo.Migrations.CreateEntryTypes do
  use Ecto.Migration

  def change do
    create table(:entry_types) do
      add :name, :string

      timestamps()
    end

  end
end
