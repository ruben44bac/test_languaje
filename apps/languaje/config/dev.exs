# Since configuration is shared in umbrella projects, this file
# should only configure the :languaje application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# Configure your database
config :languaje, Languaje.Repo,
  username: "postgres",
  password: "Qaz123456",
  database: "languaje_dev",
  hostname: "localhost",
  pool_size: 10
