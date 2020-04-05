defmodule HelloLv10Web.LivePage2 do
  use Phoenix.LiveView, layout: {HelloLv10Web.LayoutView, "live.html"}

  def render(assigns) do
    ~L"""
      <div>Hello LiveView Page2.</div>
      <div>I'm in the live layout.</div>
    """
  end

  def mount(_arg1, _session, socket) do
    {:ok, socket}
  end

end
