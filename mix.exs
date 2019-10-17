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

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:complex_num],
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:sbroker, "~> 1.0-beta"},
      {:complex_num, "~> 1.0.0"}
    ]
  end
end
