class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      puts
      puts "What would like to do?"
      puts "[1] List your tasks"
      puts "[2] Add a task"
      puts "[3] Mark a task as done"
      choice = gets.chomp.to_i
      case choice
      when 1 then @controller.list_tasks
      when 2 then @controller.add_task
      when 3 then @controller.mark_as_done
      else puts "Wrong command."
      end
    end
  end
end