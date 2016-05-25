defmodule Cert do
  use HTTPoison.Base
  @base_url "https://localhost:4040"

  def process_url(url), do: "#{@base_url}/api/#{url}"

  def call_api(certfile, keyfile) do
    Cert.get("test",
             [],
             ssl: [certfile: certfile,
                   keyfile: keyfile,
                   reuse_sessions: false])
  end
end
