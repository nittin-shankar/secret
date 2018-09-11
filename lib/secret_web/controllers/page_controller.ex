defmodule SecretWeb.PageController do
  use SecretWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
