require 'csv'
puts 'Event Manager Initialized!'

unless File.exist?('event_attendees.csv')
  puts 'event_attendees.csv not found'
end

contents = CSV.open('event_attendees.csv', headers: true, header_converters: :symbol)
contents.each do |row|
  name = row[:first_name]
  zipcode = row[:zipcode]
  puts "#{name} #{zipcode}"
end
