# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_adeventureworks,
  ecto_repos: [PhoenixAdeventureworks.Repo]

# Configures the endpoint
config :phoenix_adeventureworks, PhoenixAdeventureworksWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8FuNMLuUbGZxkn56wLdekwPtHr9SZUzs//MEqZZ6me8Fejv/1XI82g/iPA6bcHpD",
  render_errors: [view: PhoenixAdeventureworksWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhoenixAdeventureworks.PubSub,
  live_view: [signing_salt: "dqKQe74d"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
