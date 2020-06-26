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
      applications: [],
      extra_applications: [:logger],
      mod: {
        UnSpatioTDB.Application, []
      },
      env: [
      ]
    ]
  end

  defp deps do
    [
      {:enum_type, "~> 1.0.0"},
      {:poison, "~> 3.1"},
      {:tensor, "~> 2.1"}
    ]
  end
end
