use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phoenix_channels_pwa, PhoenixChannelsPwaWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :phoenix_channels_pwa, PhoenixChannelsPwa.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "phoenix_channels_pwa_test",
  hostname: "localhost",
  port: String.to_integer(System.get_env("PGPORT") || "5432"),
  pool: Ecto.Adapters.SQL.Sandbox
