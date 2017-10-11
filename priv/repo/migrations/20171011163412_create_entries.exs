defmodule MalRecs.Repo.Migrations.CreateEntries do
  use Ecto.Migration

  def change do
    create table(:entries) do
      add :title, :string
      add :url, :string
      add :type_id, references(:entry_types, on_delete: :nothing)

      timestamps()
    end

    create index(:entries, [:type_id])
  end
end
