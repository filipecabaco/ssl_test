# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :ssl_test, SslTest.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "Tb031yojZUPnMfwacV94ZQTBEY0EUCV75urCksDxN51pcMXugEr2FVOZT8JPbwDi",
  render_errors: [accepts: ~w(json)],
  pubsub: [name: SslTest.PubSub,
           adapter: Phoenix.PubSub.PG2],
  ssl: true,
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  https: [otp_app: :ssl_test,
          keyfile: "priv/certs/ssl.test.com.key",
          certfile: "priv/certs/ssl.test.com.crt",
          cacertfile: "priv/certs/intermediate.crt"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
