# Since configuration is shared in umbrella projects, this file
# should only configure the :languaje application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# Configure your database
config :languaje, Languaje.Repo,
  username: "postgres",
  password: "postgres",
  database: "languaje_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
