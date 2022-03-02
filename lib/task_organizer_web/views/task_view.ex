defmodule TaskOrganizerWeb.TaskView do
  use TaskOrganizerWeb, :view
  alias TaskOrganizerWeb.TaskView

  def render("index.json", %{tasks: tasks}) do
    %{data: render_many(tasks, TaskView, "task.json")}
  end

  def render("task.json", %{task: task}) do
    %{
      id: task.id,
      name: task.name,
      description: task.description
    }
  end
end
