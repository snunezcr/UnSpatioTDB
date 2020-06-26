# Santiago Nunez-Corrales @ 2020
#
# University of Illinois at Urbana-Champaign

defmodule UnSpatioTDB.Propagator do
  use Tensor
  alias UnSpatioTDB.Propagator

  # A propagator preserves the memory from which it has traveled, and
  # uses it to rescale the previous magitude by the appropriate divisor
  defstruct mag: Tensor.new([]),
            dir: Vector.new([]),
            dist: 0,
            mode: PropagationMode.Isometric,
            self: false

  # A propagator emerges from an interaction. We assume that interactions
  # are directional entities and that the point of incidence creates a propagator normal
  # to that direction. We only activate tensor propagation
  def new(mg, dr, ds, md, sf) do
      %Propagator{mag: mg, dir: dr, dist: ds, mode: md, self: sf}
  end

  def is_self(prop) do
    prop.self
  end

end
