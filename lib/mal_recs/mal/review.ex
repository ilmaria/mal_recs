defmodule MalRecs.Mal.Review do
  use Ecto.Schema
  import Ecto.Changeset
  alias MalRecs.Mal.Review


  schema "reviews" do
    field :content, :string
    field :datetime, :utc_datetime
    field :episodes_seen, :integer
    field :helpful, :integer
    field :rating, :integer
    field :user, :string
    field :entry, :id

    timestamps()
  end

  @doc false
  def changeset(%Review{} = review, attrs) do
    review
    |> cast(attrs, [:user, :rating, :content, :episodes_seen, :datetime, :helpful])
    |> validate_required([:user, :rating, :content, :episodes_seen, :datetime, :helpful])
    |> validate_number(:rating, greater_than_or_equal_to: 1, less_than_or_equal_to: 10)
    |> validate_number(:helpful, greater_than_or_equal_to: 0)
    |> validate_number(:episodes_seen, greater_than_or_equal_to: 0)
  end
end
