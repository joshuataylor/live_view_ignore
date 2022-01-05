defmodule BarWeb.FirstLive do
  use BarWeb, :live_view

  def render(assigns) do
    ~H"""
    Current temperature: <%= @temperature %>
    """
  end

  def mount(_params, _, socket) do
    {:ok, assign(socket, :temperature, 30)}
  end
end
