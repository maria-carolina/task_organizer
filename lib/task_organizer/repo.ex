defmodule TaskOrganizer.Repo do
  use Ecto.Repo,
    otp_app: :task_organizer,
    adapter: Ecto.Adapters.Postgres
end
