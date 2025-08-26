defmodule SopremaWeb.DetailsLive do
  use SopremaWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    # Ici on initialise juste un assign "message"
    {:ok, assign(socket, :message, "Bienvenue sur ma page LiveView 🚀")}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <div class="p-6">
      <h1 class="text-2xl font-bold"><%= @message %></h1>
      <p>Ceci est une page LiveView avec un mount très simple.</p>
    </div>
    """
  end
end
