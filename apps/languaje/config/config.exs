# Since configuration is shared in umbrella projects, this file
# should only configure the :languaje application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

config :languaje,
  ecto_repos: [Languaje.Repo]

import_config "#{Mix.env()}.exs"
