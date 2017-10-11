defmodule MalRecs.Mal.Entry do
  use Ecto.Schema
  import Ecto.Changeset
  alias MalRecs.Mal.Entry


  schema "entries" do
    field :title, :string
    field :url, :string
    field :type, :id

    timestamps()
  end

  @doc false
  def changeset(%Entry{} = entry, attrs) do
    entry
    |> cast(attrs, [:title, :url])
    |> validate_required([:title, :url])
  end
end
