defmodule Languaje.Repo do
  use Ecto.Repo,
    otp_app: :languaje,
    adapter: Ecto.Adapters.Postgres
end
