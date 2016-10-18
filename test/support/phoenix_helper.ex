defmodule SslTest.Support.Helpers do
  def launch_api do
    # set up config for serving
    endpoint_config =
      Application.get_env(:ssl_test, SslTest.Endpoint)
      |> Keyword.put(:server, true)
    :ok = Application.put_env(:ssl_test, SslTest.Endpoint, endpoint_config)

    # restart our application with serving enabled
    :ok = Application.stop(:ssl_test)
    :ok = Application.start(:ssl_test)
  end
end
