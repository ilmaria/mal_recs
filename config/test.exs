use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :mal_recs, MalRecsWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :mal_recs, MalRecs.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "mal_recs_pg",
  password: "mal_recs_pg",
  database: "mal_recs_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
