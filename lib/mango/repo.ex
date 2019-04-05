defmodule Mango.Repo do
  use Ecto.Repo,
    otp_app: :mango,
    adapter: Ecto.Adapters.Postgres
end
