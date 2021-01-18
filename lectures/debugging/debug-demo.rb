def full_name(first_name, last_name)
  first = first_name.capitalize
  last = last_name.capitalize

  return "#{first} #{last}"
end

def greeting(first_name, last_name)
  return "Hello #{full_name(first_name, last_name)}"
end

puts full_name('john', 'lennon')

puts "End of my code"


# require 'pry-byebug'
# binding.pry

# next
# continue
# exit