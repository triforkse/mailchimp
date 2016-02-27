defmodule Mailchimp do
  use Application

  def start_link(_args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(Mailchimp.Config, []),
    ]

    opts = [strategy: :one_for_one, name: Aliver.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
