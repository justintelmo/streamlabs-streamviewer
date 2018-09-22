defmodule Streamviewer.Router do
  use Streamviewer.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Streamviewer do
    pipe_through :api
  end
end
