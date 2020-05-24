defmodule DbConnCursors.MixProject do
  use Mix.Project

  def project do
    [
      app: :db_conn_cursors,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {DBConnCursors.Application, []},
      extra_applications: [:logger, :runtime_tools],
      included_applications: [:observer_cli]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto_sql, "~> 3.0"},
      {:ecto, "~> 3.0"},
      {:myxql, "~> 0.3.0", override: true},
      {:quantum, "~> 2.3"},
      {:jason, "~> 1.2"},
      {:scrivener_ecto, "~> 2.0"},
      {:observer_cli, "~> 1.5"}
    ]
  end
end
