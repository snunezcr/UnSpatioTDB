# Santiago Nunez-Corrales @ 2020
#
# University of Illinois at Urbana-Champaign

defmodule UnSpatioTDB.NoiseGenerator do
  use EnumType

  defenum NoiseType do
    value White, "white"
    value Pink, "pink"
  end
end
