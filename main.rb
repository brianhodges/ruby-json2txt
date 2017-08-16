require 'json'
load 'person.rb'

file = File.read('data.json')
data = JSON.parse(file)
people = []

data.each do |record|
	person = Person.new(record)
	people << person
end

File.open('log.txt', 'w') do |f|
	people.each do |p|
		f.puts "ID: #{p.id}"
		f.puts "Full Name: #{p.full_name}"
		f.puts "Email: #{p.email}"
		f.puts "BTC Address: #{p.btc_address}"
		f.puts "IP Address: #{p.ip_address}"
		f.puts
	end
end