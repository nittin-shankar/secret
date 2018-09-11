# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :secret,
  ecto_repos: [Secret.Repo]

# Configures the endpoint
config :secret, SecretWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "O9wmUkqiTs0ZkFSR2mmn2miHgxaO+dSxS1DWTCSX4PKIL5ildS4XQBu2RCFMQQIF",
  render_errors: [view: SecretWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Secret.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
