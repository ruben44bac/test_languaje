defmodule LanguajeWeb.PageController do
  use LanguajeWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
