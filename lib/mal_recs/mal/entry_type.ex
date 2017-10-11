defmodule MalRecs.Mal.EntryType do
  use Ecto.Schema
  import Ecto.Changeset
  alias MalRecs.Mal.EntryType


  schema "entry_types" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%EntryType{} = entry_type, attrs) do
    entry_type
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
