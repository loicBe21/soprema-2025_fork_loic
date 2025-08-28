defmodule Soprema.Photo do
  use Ecto.Schema
  import Ecto.Changeset

  schema "photo" do
    field :idproduit, :integer
    field :nom, :string
  end

  def changeset(photo, attrs) do
    photo
    |> cast(attrs, [:idproduit, :nom])
    |> validate_required([:idproduit, :nom])
  end
end
