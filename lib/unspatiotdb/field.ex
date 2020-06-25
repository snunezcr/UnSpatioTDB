# Santiago Nunez-Corrales @ 2020
#
# University of Illinois at Urbana-Champaign

# A field can be a complex object, which may hold tensors of any rank.
# For the moment, a scalar value is one with zero dimensions
defmodule UnspatioTDB.Field do
  use Tensor
  alias UnSpatioTDB.Field

  defstruct dim: [],
            value: Tensor.new([])

  def new(dims, values) do
    %Field{dim: dims, value: Tensor.new(values)}
  end

  def is_scalar(f) do
    f.dim == []
  end
end
