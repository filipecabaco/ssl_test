defmodule SslTest.HttpsController do
  use SslTest.Web, :controller

  def test_get(conn, _params) do
    text conn , ""
  end
  def test_post(conn, _params) do
    text conn , ""
  end
end
