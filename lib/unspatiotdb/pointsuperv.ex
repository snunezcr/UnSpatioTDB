
defmodule UnSpatioTDB.PointSupervisor do
  use DynamicSupervisor

  @me __MODULE__

  def start_link(_) do
    DynamicSupervisor.start_link(@me, :no_args, name: @me)
  end

  def init(:no_args) do
    DynamicSupervisor.init(strategy: :one_for_one)
  end

  def create_point(point_id, point) do
    spec = {UnSpatioTDB.Point, [point_id, point]}
    DynamicSupervisor.start_child(@me, spec)
  end

  def all_points() do
    DynamicSupervisor.which_children(@me)
  end
end
