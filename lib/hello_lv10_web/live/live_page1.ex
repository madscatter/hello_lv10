defmodule HelloLv10Web.LivePage1 do
  use Phoenix.LiveView

  def render(assigns) do
    ~L"""
      <div>Hello LiveView Page1.</div>
      <div>There is no layout.</div>
    """
  end

  def mount(_arg1, _session, socket) do
    {:ok, socket}
  end

end