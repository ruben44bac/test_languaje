# Since configuration is shared in umbrella projects, this file
# should only configure the :languaje_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# General application configuration
config :languaje_web,
  ecto_repos: [Languaje.Repo],
  generators: [context_app: :languaje]

# Configures the endpoint
config :languaje_web, LanguajeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "agV8uBxr1HbYjiMKndTbwv8DYo98hE/5wWvYFYfTM1TwmI/Ofc0e7SBO5iSSUHor",
  render_errors: [view: LanguajeWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LanguajeWeb.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "ZXCbWtSUmfC+cjQmcDfMspPFV4FKSjIC"
  ]

config :languaje_web, LanguajeWeb.Gettext, default_locale: "es", locales: ~w(en es ru)


# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
