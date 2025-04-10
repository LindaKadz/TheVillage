import Config

# Note we also include the path to a cache manifest
# containing the digested version of static files. This
# manifest is generated by the `mix assets.deploy` task,
# which you should run after static files are built and
# before starting your production server.
config :the_village_sf, TheVillageSfWeb.Endpoint,
  cache_static_manifest: "priv/static/cache_manifest.json"

# Configures Swoosh API Client
config :swoosh, api_client: Swoosh.ApiClient.Finch, finch_name: TheVillageSf.Finch

# Disable Swoosh Local Memory Storage
config :swoosh, local: false

# Do not print debug messages in production
config :logger, level: :info

host = "https://www.thevillagesf.com" || "https://thevillagesf.com"

config :the_village_sf, TheVillageSfWeb.Endpoint,
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  url: [host: host, port: 80],
  cache_static_manifest: "priv/static/cache_manifest.json",
  check_origin: [
    "//www.thevillagesf.com",
    "//thevillagesf.com",
    "//the-village.gigalixirapp.com/"
  ]

# Runtime production configuration, including reading
# of environment variables, is done on config/runtime.exs.
