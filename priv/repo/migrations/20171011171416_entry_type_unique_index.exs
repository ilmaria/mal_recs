defmodule MalRecs.Repo.Migrations.EntryTypeUniqueIndex do
  use Ecto.Migration

  def change do
    create unique_index(:entry_types, :name)
  end
end
