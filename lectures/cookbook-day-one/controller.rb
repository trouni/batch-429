require_relative 'task'

class Controller
  def initialize(view, repository)
    @view = view
    @repository = repository
  end

  def add_task
    # 1. Ask the user for a task title
    title = @view.ask_for_title
    # 2. Create the task
    task = Task.new(title)
    # 3. Store it in the repository
    @repository.add(task)
  end

  def list_tasks
    # 1. Get tasks from the repository
    tasks = @repository.all
    # 2. Tell the view to display the tasks
    @view.display(tasks)
  end

  def mark_as_done
    # 1. Ask the user which task to update
    index_to_mark = @view.ask_for_index
    # 2. Find the task in the repository
    task = @repository.find(index_to_mark)
    # 3. Mark the task as done
    task.mark_as_done!
  end
end