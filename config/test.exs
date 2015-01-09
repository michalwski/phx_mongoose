use Mix.Config

config :phx_mongoose, PhxMongoose.Endpoint,
  http: [port: System.get_env("PORT") || 4001]
