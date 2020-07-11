defmodule PhoenixAdventureworksWeb.PageController do
  use PhoenixAdventureworksWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
