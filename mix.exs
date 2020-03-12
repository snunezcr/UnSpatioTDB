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
      ]
    ]
  end

  defp deps do
    [
      {:tensor, "~> 2.1"}
    ]
  end
end
