defmodule Soprema.Produit do
  alias Soprema.{Repo,Produit}
  import Ecto.Query

  def list_produit do
    query = from(p in Produit)
    Repo.all(query)
  end
end
