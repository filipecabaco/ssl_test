defmodule SslTest.CertTest do
  use ExUnit.Case

  setup do
    SslTest.Support.Helpers.launch_api

    user1_cert = "priv/certs/user1.crt"
    user1_key = "priv/certs/user1.key"
    Cert.call_api(user1_cert, user1_key)
  end

  #After we do a successful ssl connection, even with reuse_sessions as false, we still
  #are able to access the system with an incorrect key.

  test "call with valid cert and invalid key" do
    user2_cert =  "priv/certs/user2.crt"
    user2_fake_key = "priv/certs/user2_fake.key"

    res = Cert.call_api(user2_cert, user2_fake_key)
    IO.puts "Was I able to make request? #{res}"
    assert res == :err
  end
end
