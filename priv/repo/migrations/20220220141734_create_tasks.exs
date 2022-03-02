defmodule TaskOrganizer.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table (:tasks) do
      add :name, :string
      add :description, :string
      add :priority, :integer
      add :category_id, references(:categories)

      timestamps()
    end
  end
end
