defmodule BarWeb.SecondLive do
  use BarWeb, :live_view

  def render(assigns) do
    ~H"""
    Current calculation: <%= @calculation %>
    """
  end

  def mount(_params, _, socket) do
    {:ok, assign(socket, :calculation, 42)}
  end
end
