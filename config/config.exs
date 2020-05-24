# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :db_conn_cursors, DBConnCursors.Repo,
  url: "ecto://user:pass@127.0.0.1:3306/test_db",
  pool_size: 20

config :db_conn_cursors,
  ecto_repos: [DBConnCursors.Repo]

config :db_conn_cursors, Scheduler,
  jobs: [
    expire_models: [
      schedule: {:extended, "*/10 * * * *"},
      task: {DBConnCursors.ExpireModels, :run, []},
      overlap: false
    ]
  ]

# import_config "#{Mix.env()}.exs"
