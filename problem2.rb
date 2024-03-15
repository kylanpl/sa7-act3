score = 0

puts "Welcome to the Adventure Game!"
puts "You have #{score} points."

loop do
  puts "Choose a room (1-3) to enter or 'exit' to end the game:"
  input = gets.chomp.downcase
  if input == 'exit'
    break
  end

  room_number = input.to_i
  if room_number == 1
    points = 5
    score += points
    puts "You entered Room 1 and earned #{points} points."
  elsif room_number == 2
    points = 10
    score += points
    puts "You entered Room 2 and earned #{points} points."
  elsif room_number == 3
    points = 15
    score += points
    puts "You entered Room 3 and earned #{points} points."
  else
    puts "Invalid room number. Please try again."
  end
end

puts "Game over! You collected a total of #{score} points."
