defmodule PhoenixAdventureworks.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_adventureworks,
    adapter: Ecto.Adapters.Postgres
end
