defmodule SslTest.HttpsController do
  use SslTest.Web, :controller
  def test_get(conn, params) do
    text conn , "Called"
  end
end
