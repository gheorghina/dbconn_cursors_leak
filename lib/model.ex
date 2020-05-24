defmodule DBConnCursors.Model do
  use Ecto.Schema

  schema "models" do
    field(:uuid, :string)
    field(:status, :string)
    field(:expires_at, :utc_datetime)
  end
end
