defmodule DBConnCursors.Repo do
  use Scrivener, page_size: 10
  use Ecto.Repo, otp_app: :db_conn_cursors, adapter: Ecto.Adapters.MyXQL
end
