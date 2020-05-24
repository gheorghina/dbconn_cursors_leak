defmodule DBConnCursors.Application do
  use Application

  require Logger

  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    Logger.info("Starting application")
    start_supervisor()
  end

  def start_supervisor() do
    # Define workers and child supervisors to be supervised
    children = [ 
      {DBConnCursors.Repo, []},
      {DBConnCursors.Scheduler, []}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: DBConnCursors.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
