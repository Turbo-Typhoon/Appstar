defmodule Appstar.Posts.Post do
  use Ecto.Schema
  import Ecto.Changeset

  alias Appstar.Accounts.User

  schema "posts" do
    field :caption, :string
    field :image_path, :string
    field :u, :string
    belongs_to :user, User

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:caption, :image_path, :user_id])
    |> validate_required([:caption, :image_path, :user_id])
  end
end
