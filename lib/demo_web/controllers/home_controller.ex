defmodule DemoWeb.HomeController do
  use DemoWeb, :controller

  alias Demo.Query

  def show(conn, _params) do
    items = Query.all()
    render(conn, :show, items: items)
  end
end
