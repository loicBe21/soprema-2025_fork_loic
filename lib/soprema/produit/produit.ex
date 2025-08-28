defmodule Soprema.Produit do
  use Ecto.Schema
  import Ecto.Changeset

  schema "produit" do
    field :nom, :string
    field :description, :string
    field :photo, :string
  end

  def changeset(produit, attrs) do
    produit
    |> cast(attrs, [:nom, :description, :photo])
    |> validate_required([:nom, :description, :photo])
  end
end
