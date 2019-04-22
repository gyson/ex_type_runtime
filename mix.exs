defmodule T.MixProject do
  use Mix.Project

  def project do
    [
      app: :t,
      version: "0.1.0",
      description: "Minimal runtime support for ExType",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      package: package(),
      deps: deps(),
      name: "T",
      source_url: "https://github.com/gyson/t"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.20.2", only: :dev, runtime: false},
    ]
  end

  def package do
    %{
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/gyson/t"}
    }
  end
end
