defmodule Extructure.MixProject do
  use Mix.Project

  @source_url "https://github.com/DaTrader/extructure"

  def project do
    [
      app: :extructure,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "Extructure is a flexible destructure library for Elixir.",
      package: package(),

      # Docs
      name: "Extructure",
      source_url: @source_url,
      docs: [
        # The main page in the docs
        main: "Extructure",
        extras: ["README.md"]
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:dialyxir, "~> 1.2", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.29", only: :dev, runtime: false},
      {:credo, "~> 1.6", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      maintainers: ["DaTrader"],
      licenses: ["MIT"],
      links: %{github: @source_url},
      files: ~w(lib test .formatter.exs mix.exs README.md LICENSE.md CHANGELOG.md)
    ]
  end
end
