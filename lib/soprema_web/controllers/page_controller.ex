defmodule SopremaWeb.PageController do
  use SopremaWeb, :controller
  alias Soprema.Produits

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    p = Produits.list_produit()
    render(conn, :home, produit_var: p, layout: false)
  end

  def produit(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    p = Produits.list_produit()
    render(conn, :produits, produit_var: p, layout: false)
  end

  def recherche(conn, %{"find" => query}) do
    # appelle la fonction Produits.find/1 avec le paramètre string
    p = Produits.find(query)
    IO.inspect(p, label: "Résultats de la recherche")

    render(conn, :produits, produit_var: p, layout: false)
  end
end
