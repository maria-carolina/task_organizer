defmodule TaskOrganizerWeb.TaskController do
  use TaskOrganizerWeb, :controller

  alias TaskOrganizer.Tasks

  def index(conn, _params) do
    tasks = Tasks.list_tasks()
    render(conn, "index.json", tasks: tasks)
  end
end
