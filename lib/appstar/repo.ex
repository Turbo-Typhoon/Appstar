defmodule Appstar.Repo do
  use Ecto.Repo,
    otp_app: :appstar,
    adapter: Ecto.Adapters.MyXQL
end
