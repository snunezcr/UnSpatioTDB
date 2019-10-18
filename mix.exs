defmodule UnSpatioTDB.MixProject do
  use Mix.Project

  def project do
    [
      app: :unspatiotdb,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      applications: [:complex_num],
      extra_applications: [:logger],
      mod: {
        UnSpatioTDB.Application, []
      },
      env: [
        # Configuration of time related elements in microseconds. Contrary to
        # other simulation approaches, we want complete concurrency in the
        # operations, hence wait times are required. The quantum is the smallest
        # expected subdivision, and the interaction time
        time_model: %{
          quantum:    10,
          interact: 200
        },
        # Configuration of the space model. Number of dimensions, connectivity
        # pattern based on the most general tensor writable for the system and
        # additional weights per each connection, useful to simulate local
        # anisotropies.
        space_model: %{
          dof:        3,
          topology:   [
            [ 0, 1, 0 ],
            [ 1, 0, 1 ],
            [ 1, 0, 0 ]
          ],
          weights:    [
            [ 0, 1, 0 ],
            [ 1, 0, 1 ],
            [ 1, 0, 0 ]
          ]
        },
        # Configuration of the number system representation.
        # Some field problems are simpler to define in polar coordinates
        complex_model: %{
          pos_mode:   :cartesian,
          fld_mode:   :cartesian
        },
        # 3D harmonic oscillator model. Depending on which of these match nil,
        # responsibilities are delegated across various implementations for
        # efficiency purposes.
        harm_osc_model: %{
          k1:         1,
          K2:         1,
          k3:         1
        }
      ]
    ]
  end

  defp deps do
    [
      {:bunyan, ">= 0.0.0"},
      {:complex_num, "~> 1.0.0"},
      {:sbroker, "~> 1.0-beta"}
    ]
  end
end
