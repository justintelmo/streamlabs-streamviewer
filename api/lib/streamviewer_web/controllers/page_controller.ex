defmodule StreamviewerWeb.PageController do
  use StreamviewerWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
