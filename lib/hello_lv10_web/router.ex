defmodule HelloLv10Web.Router do
  use HelloLv10Web, :router
  import Phoenix.LiveView.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug :put_root_layout, {HelloLv10Web.LayoutView, :root}
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", HelloLv10Web do
    pipe_through :browser

    get "/", PageController, :index
    live "/live1", LivePage1
    live "/live2", LivePage2
  end

  # Other scopes may use custom stacks.
  # scope "/api", HelloLv10Web do
  #   pipe_through :api
  # end
end
