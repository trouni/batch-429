class View
  def ask_for_title
    puts "What is your task?"
    print '> '
    return gets.chomp
  end

  def ask_for_index
    puts "Which task number?"
    print '> '
    return gets.chomp.to_i - 1
  end

  def display(tasks)
    puts "=== HERE ARE YOUR TASKS ===".center(50)
    tasks.each_with_index do |task, index|
      x = task.done? ? 'X' : ' '
      puts "#{index + 1} - [#{x}] #{task.title}"
    end
    puts "===========================".center(50)
  end
end