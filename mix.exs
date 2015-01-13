defmodule PhxMongoose.Mixfile do
  use Mix.Project

  def project do
    [app: :phx_mongoose,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: ["lib", "web"],
     compilers: [:phoenix] ++ Mix.compilers,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {PhxMongoose, []},
     applications: [:phoenix, :cowboy, :logger, :mongooseim, :ejabberd]]
  end

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [{:phoenix, "~> 0.7.2"},
     {:cowboy, "~> 1.0", override: true},
     {:mongooseim, git: "https://github.com/esl/MongooseIM.git", branch: "phoenix-integration"},
      # overrides
     {:proper,  git: "git://github.com/manopapad/proper.git", tag: "v1.1", override: true},
     {:p1_utils, git: "git://github.com/processone/p1_utils", ref: "9e646e4", override: true},
     {:meck, git: "git://github.com/eproxus/meck.git", tag: "0.8.2", override: true},
     {:folsom, git: "git://github.com/boundary/folsom.git", ref: "4824aec", override: true}
    ]

  end
end
