defmodule MalRecs.Repo.Migrations.CreateReviews do
  use Ecto.Migration

  def change do
    create table(:reviews) do
      add :user, :string
      add :rating, :integer
      add :content, :text
      add :episodes_seen, :integer
      add :datetime, :utc_datetime
      add :helpful, :integer
      add :entry_id, references(:entries, on_delete: :nothing)

      timestamps()
    end

    create index(:reviews, [:entry_id])
  end
end
