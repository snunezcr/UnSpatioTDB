defmodule UnSpatioTDB.Locale do
  alias UnSpatioTDB.Locale
  use Tensor

  defstruct dim: 0,
            dofs: Vector.new([])

  def dist(a, b) do
    with  u <- a.dofs,
          v <- b.dofs,
          w <- Vector.sub(u, v) do
            :math.sqrt(Vector.dot_product(w, w))
          end
  end

  def new(dims, list) do
    %Locale{dim: dims, dofs: Vector.new(list)}
  end
end
