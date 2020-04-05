defmodule HelloLv10Web.PageController do
  use HelloLv10Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
