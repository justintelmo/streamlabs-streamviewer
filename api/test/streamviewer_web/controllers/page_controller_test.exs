defmodule StreamviewerWeb.PageControllerTest do
  use StreamviewerWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Welcome to Streamviewer!"
  end
end
