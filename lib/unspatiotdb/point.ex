defmodule UnSpatioTDB.Point do
  @moduledoc """
  Implementation of a Point using a Locale as an internal driver.
  """
  use GenServer, restart: :transient
  alias UnSpatioTDB.Locale
  alias UnSpatioTDB.Point

  @registry_point :point_registry

  # API

  def start_link([point_id, locale]) do
    GenServer.start_link @me, [point_id, tau, locale], name: via_tuple(point_id)
  end

  # Server
  def init([point_id, config]) do

  end

end
