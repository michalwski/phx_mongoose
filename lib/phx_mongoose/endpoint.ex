defmodule PhxMongoose.Endpoint do
  use Phoenix.Endpoint, otp_app: :phx_mongoose

  plug Plug.Static,
    at: "/", from: :phx_mongoose

  plug Plug.Logger

  # Code reloading will only work if the :code_reloader key of
  # the :phoenix application is set to true in your config file.
  plug Phoenix.CodeReloader

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_phx_mongoose_key",
    signing_salt: "bymwvGR7",
    encryption_salt: "qQj+rZz8"

  plug :router, PhxMongoose.Router
end
