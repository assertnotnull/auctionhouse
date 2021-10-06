defmodule AuctionTestWeb.PageController do
  use AuctionTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
