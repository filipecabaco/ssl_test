# SslTest

A simple SSL test to show that  HTTPoison/Hackney is reusing the same session and not destroying a previous SSL session.

## Run the test
Start up Phoenix App with:
  * `mix phoenix.server`

Then run on another terminal the test:
  * `mix test`

## What it does
We create a very simple phoenix application with the required information for SSL connection.

The test just tries to make a HTTP request with an invalid key with a different certificate and with an incorrect key. The request seems to go through and the ssl options flag `reuse_sessions: false` doesn't help in this case

Note: Setup uses a valid user to show how the session is being reused
