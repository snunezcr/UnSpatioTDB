# Santiago Nunez-Corrales @ 2020
#
# University of Illinois at Urbana-Champaign

defmodule UnSpatioTDB.Decay do
  use EnumType
  use Tensor

  # Propagation modes
  defenum DecayMode do
    value NoDecay, "none"
    value Polynomial, "poly"
    value Exponential, "exp"

    default Isometric
  end

  def field_decay(obj, dist, mode, params) do
    case mode do
        DecayMode.NoDecay -> obj
        DecayMode.Polynomial -> with  k = Enum.at(params, 0),
                                      n = Enum.at(params, 1),
                                      s = Enum.at(params, 2)
                                do
                                  field_decay_poly(obj, dist, k, n, s)
                                end
        DecayMode.Exponential ->  with a = Enum.at(params, 0)
                                  do
                                    field_decay_exp(obj, dist, a)
                                  end

    end
  end

  defp field_decay_poly(obj, dist, k, n ,s) do
    with q = 1/:math.pow(1 + k*:math.pow(dist, n*s), s)
    do
      Tensor.mult(obj, q)
    end
  end

  defp field_decay_exp(obj, dist, a) do
    with q = :math.exp(-a*dist)
    do
      Tensor.mult(obj, q)
    end
  end
end
