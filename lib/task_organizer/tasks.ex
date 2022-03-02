defmodule TaskOrganizer.Tasks do

  alias TaskOrganizer.Repo
  alias TaskOrganizer.Tasks.Category
  alias TaskOrganizer.Tasks.Task

  def list_tasks do
    Repo.all(Task)
  end

end
