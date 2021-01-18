require 'json'
require 'open-uri'

puts 'Enter a GitHub username:'
print '> '
username = gets.chomp
# TODO - Let's fetch name and bio from a given GitHub username
url = "https://api.github.com/users/#{username}"

serialized_user = open(url).read

user = JSON.parse(serialized_user)

puts "#{user['name']} has #{user['public_repos']} public repos and is in #{user['location']}."