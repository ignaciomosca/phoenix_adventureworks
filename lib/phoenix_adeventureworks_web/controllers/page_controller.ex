defmodule PhoenixAdeventureworksWeb.PageController do
  use PhoenixAdeventureworksWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
