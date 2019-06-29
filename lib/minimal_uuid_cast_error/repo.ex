defmodule MinimalUuidCastError.Repo do
  use Ecto.Repo,
    otp_app: :minimal_uuid_cast_error,
    adapter: Ecto.Adapters.Postgres
end
