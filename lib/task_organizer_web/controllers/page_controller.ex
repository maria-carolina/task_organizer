defmodule TaskOrganizerWeb.PageController do
  use TaskOrganizerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
