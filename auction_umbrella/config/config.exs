# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of the Config module.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
import Config

config :auction, Auction.Repo,
  database: "auction_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  port: 5432

config :auction, ecto_repos: [Auction.Repo]

config :auction_web,
  generators: [context_app: false]

# Configures the endpoint
config :auction_web, AuctionWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ihRt2gm+mzBUjaxV/7QznwXcTdOEnkQ6YcZtVkR2hrtsQW2QJ8o/bAfMin1ldk/G",
  render_errors: [view: AuctionWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: AuctionWeb.PubSub,
  live_view: [signing_salt: "UqTMV7fR"]

# Sample configuration:
#
#     config :logger, :console,
#       level: :info,
#       format: "$date $time [$level] $metadata$message\n",
#       metadata: [:user_id]
#

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
