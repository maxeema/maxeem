defmodule Maxeem.MixProject do
  use Mix.Project

  def project do
    [
      app: :maxeem,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Maxeem.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ace, "~> 0.18.9"},
      {:json, "~> 1.3"},
      {:redix, ">= 0.0.0"},
      {:httpoison, "~> 1.6"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
