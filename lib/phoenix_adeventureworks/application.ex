defmodule PhoenixAdeventureworks.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      PhoenixAdeventureworks.Repo,
      # Start the Telemetry supervisor
      PhoenixAdeventureworksWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: PhoenixAdeventureworks.PubSub},
      # Start the Endpoint (http/https)
      PhoenixAdeventureworksWeb.Endpoint
      # Start a worker by calling: PhoenixAdeventureworks.Worker.start_link(arg)
      # {PhoenixAdeventureworks.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: PhoenixAdeventureworks.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    PhoenixAdeventureworksWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
