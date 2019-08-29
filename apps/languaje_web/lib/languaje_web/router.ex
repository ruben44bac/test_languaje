defmodule LanguajeWeb.Router do
  use LanguajeWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug Phoenix.LiveView.Flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug LanguajeWeb.Plugs.SetLocale
    #plug SetLocale, gettext: LanguajeWeb.Gettext, default_locale: "es"
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  #scope "/", LanguajeWeb do
  #  pipe_through :browser
  #  get "/", LanguajeWeb.Redirector, to: "/:locale"
  #end

  scope "/", LanguajeWeb do
    pipe_through :browser

    # get "/", PageController, :index
    live "/", HomeLive, session: [:locale]
  end

  # Other scopes may use custom stacks.
  # scope "/api", LanguajeWeb do
  #   pipe_through :api
  # end
end
