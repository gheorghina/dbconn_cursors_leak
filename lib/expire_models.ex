defmodule DBConnCursors.ExpireModels do
  @moduledoc """
  Expire models
  """

  import Ecto.Query
  alias DBConnCursors.Repo
  alias DBConnCursors.Model

  def run() do
    current_date = DateTime.utc_now()

    query =
      from(m in Model,
        where: m.status != "expired",
        where: fragment("TIMESTAMPDIFF(SECOND, ?, ?)", ^current_date, m.expires_at) < 0
      )

    stream =
      query
      |> Repo.stream()
      |> Task.async_stream(fn _model -> :ok end)

    Repo.transaction(fn -> Stream.run(stream) end)
  end
end
