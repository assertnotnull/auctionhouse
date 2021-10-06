defmodule AuctionTest.Repo do
  use Ecto.Repo,
    otp_app: :auction_test,
    adapter: Ecto.Adapters.Postgres
end
