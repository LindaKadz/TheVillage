defmodule TheVillageSf.Repo do
  use Ecto.Repo,
    otp_app: :the_village_sf,
    adapter: Ecto.Adapters.Postgres
end
