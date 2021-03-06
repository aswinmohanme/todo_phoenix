defmodule TaskerWeb.Router do
  use TaskerWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", TaskerWeb do
    pipe_through :browser

    resources "/", TodoController
  end

  # Other scopes may use custom stacks.
  # scope "/api", TaskerWeb do
  #   pipe_through :api
  # end
end
