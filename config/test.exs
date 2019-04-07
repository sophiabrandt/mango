use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :mango, MangoWeb.Endpoint,
  http: [port: 4001],
  server: true

# Hound config
config :hound, driver: "phantomjs"

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :mango, Mango.Repo,
  username: "postgres",
  password: "postgres",
  database: "mango_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
