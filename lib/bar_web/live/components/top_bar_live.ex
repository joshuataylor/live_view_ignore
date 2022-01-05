defmodule BarWeb.TopBarComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div class="super_topbar"  phx-update="ignore">
      <%= live_patch "first", to: BarWeb.Router.Helpers.live_path(@socket, BarWeb.FirstLive) %>
      <%= live_patch "second", to: BarWeb.Router.Helpers.live_path(@socket, BarWeb.SecondLive) %>
      <%= live_patch "third", to: BarWeb.Router.Helpers.live_path(@socket, BarWeb.ThirdLive) %>
    </div>
    """
  end
end
