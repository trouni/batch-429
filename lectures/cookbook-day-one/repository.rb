class Repository
  def initialize
    @tasks = []
  end

  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end

  def add(task)
    @tasks << task
  end

  def remove(task)
    @tasks.delete(task)
  end
end