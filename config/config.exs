# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :dashy,
  ecto_repos: [Dashy.Repo]

# Configures the endpoint
config :dashy, DashyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Vo5PsNNgxQEMy9LY4fpTxJByF3iJgd8iOF9Qo0MNBlLRefeYJzIBqx5RNLI4NMp9",
  render_errors: [view: DashyWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Dashy.PubSub,
  live_view: [signing_salt: "Ww2nhX8x"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
