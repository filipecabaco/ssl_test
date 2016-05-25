defmodule SslTest.Router do
  use SslTest.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SslTest do
    pipe_through :api

    get "/", HttpsController, :test_get
    post "/", HttpsController, :test_post
  end
end
