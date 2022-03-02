defmodule TaskOrganizer.Tasks.Category do
  use Ecto.Schema
  import Ecto.Changeset

  alias TaskOrganizer.Tasks.Task

  schema "categories" do
    field :name, :string

    has_many :tasks, Task
    timestamps()
  end

  def changeset(params) do
    %__MODULE__{}
    |> cast(params, [:name])
    |> validate_required(:name)
    |> validate_length(:name, min: 2)
  end
end
