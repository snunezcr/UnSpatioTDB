# Santiago Nunez-Corrales @ 2019
#
# University of Illinois at Urbana-Champaign

defmodule UnSpatioTDB.Application do
  @moduledoc """
  The application module is the entry point for the spatio-temporal database,
  and the supervision structure is constructed here.
  """

  @moduledoc since: "0.1.0"
  use Application
  require Logger

  def start(_type, _args) do
    Logger.info("UnSpatioTDB is initializing...")

    children = []
    opts = [ strategy: :one_for_one, name: UnSpatioTDB.Supervisor]

    Logger.info("Starting children and supervision processess...")

    Supervisor.start_link(children, opts)
  end

end
