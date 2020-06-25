defmodule UnspatioTDB.Locale do
  use Tensor

  defstruct dim: 0,
            dofs: Vector.new([])

  def dist(a, b) do
    1
  end
end
