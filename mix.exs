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
        pos_complex_mode: :cartesian,
        fld_complex_mode: :cartesian
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
