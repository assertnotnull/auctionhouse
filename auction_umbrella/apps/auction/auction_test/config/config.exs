# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :auction_test,
  ecto_repos: [AuctionTest.Repo]

# Configures the endpoint
config :auction_test, AuctionTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "9dvX/ZufzyirgsE/NP5rHiMwj1i18ZsVfCNh18hd3sVGQmQQJpUE61QQux8Syqw2",
  render_errors: [view: AuctionTestWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: AuctionTest.PubSub,
  live_view: [signing_salt: "jriLsbU6"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
