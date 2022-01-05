defmodule BarWeb.ThirdLive do
  use BarWeb, :live_view

  def render(assigns) do
    ~H"""
    Current cups of coffee: <%= @coffee %>
    """
  end

  def mount(_params, _, socket) do
    {:ok, assign(socket, :coffee, 1337)}
  end
end
