defmodule Streamviewer.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Streamviewer.User
  alias Streamviewer.Videos.Video


  schema "users" do
    field :email, :string
    field :first_name, :string
    field :last_name, :string
    field :provider, :string
    field :token, :string
    has_many :videos, Video
    
    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:first_name, :last_name, :email, :provider, :token])
    |> validate_required([:first_name, :last_name, :email, :provider, :token])
  end
end
