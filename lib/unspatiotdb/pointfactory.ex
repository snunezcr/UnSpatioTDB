defmodule UnSpatioTDB.PointFactory do
  use GenServer, restart: :transient
  alias UnSpatioTDB.PointSupervisor
  alias UnSpatioTDB.Point
  alias UnSpatioTDB.Locale

  @me __MODULE__

  @registry_point :point_registry

  # API

  def start_link([ranges, locale, tau, dr]) do
    GenServer.start_link @me, [ranges, locale, tau, dr], name: @me
  end

  def stop(clk_id) do
    GenServer.cast @me, :stop
  end

  # Server
  def handle_cast(:stop, {state}) do
    {:stop, "PointFactory operation finalized", state}
  end

end
