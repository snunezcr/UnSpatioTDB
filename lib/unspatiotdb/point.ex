defmodule UnSpatioTDB.Point do
  @moduledoc """
  Implementation of a Point using a Locale and Field as internal drivers.
  """
  use GenServer, restart: :transient
  alias UnSpatioTDB.LocaleSpec
  alias UnSpatioTDB.FieldSpec
  alias UnSpatioTDB.Point

  @registry_point :point_registry

  # API

  def start_link([point_id, locale]) do
    GenServer.start_link @me, [point_id, locale], name: via_tuple(point_id)
  end

  # Server
  def init([point_id, config]) do
    {:ok, {point_id, config}}
  end

  defp via_tuple(name),
    do: {:via, Registry, {@registry_clk, name} }

end
