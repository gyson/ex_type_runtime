defmodule ExTypeRuntime.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_type_runtime,
      version: "0.2.0",
      description: "Minimal runtime support for ExType",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      package: package(),
      deps: deps(),
      name: "ExTypeRuntime",
      source_url: "https://github.com/gyson/ex_type_runtime"
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
      {:ex_doc, "~> 0.20.2", only: :dev, runtime: false}
    ]
  end

  def package do
    %{
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/gyson/ex_type_runtime"}
    }
  end
end
