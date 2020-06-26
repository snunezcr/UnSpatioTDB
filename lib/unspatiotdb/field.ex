# Santiago Nunez-Corrales @ 2020
#
# University of Illinois at Urbana-Champaign

# A field can be a complex object, which may hold tensors of any rank.
# For the moment, a scalar value is one with zero dimensions
defmodule UnspatioTDB.Field do
  use Tensor

  defstruct dim: [],
            value: Tensor.new([]),
            hysterons: Tensor.new([],[3,1])

  def new(dims, values, hysts) do
    %UnspatioTDB.Field{dim: dims, value: Tensor.new(values), hysterons: Tensor.new([3], [hysts])}
  end

  def is_scalar(f) do
    f.dim == []
  end
end
