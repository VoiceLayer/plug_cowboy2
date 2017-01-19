defmodule PlugCowboy2.Mixfile do
  use Mix.Project

  def project do
    [app: :plug_cowboy2,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger],
     mod: {PlugCowboy2.Application, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:ranch, github: "ninenines/ranch", ref: "1.3.0", override: true, optional: true},
     {:cowlib, github: "ninenines/cowlib", ref: "master", override: true, optional: true},
     {:plug, "~> 1.3.0"},
     {:cowboy, github: "ninenines/cowboy", ref: "2.0.0-pre.4", override: true, optional: true}]
  end
end
