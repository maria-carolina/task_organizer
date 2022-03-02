defmodule TaskOrganizer.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset

  alias TaskOrganizer.Tasks.Category

  @fields [:name, :description, :priority, :status, :category_id]

  schema "tasks" do
    field :name, :string
    field :description, :string
    field :priority, :integer
    field :status, :string

    belongs_to :category, Category
    timestamps()
  end

  def changeset(params) do
    %__MODULE__{}
    |> cast(params, @fields)
    |> validate_required(@fields)
    |> validate_length(:name, min: 2)
  end
end
