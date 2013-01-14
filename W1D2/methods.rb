def victory?(your_move, their_move)
  victory_conditions = {
    "Rock" => "Scissors",
    "Paper" => "Rock",
    "Scissors" => "Paper"
  }

  if victory_conditions[your_move] == their_move
    true
  else
    false
  end
end

def rps(your_move)
  moves = ["Rock", "Paper", "Scissors"]
  their_move = moves[rand(3)]

  if victory?(your_move, their_move)
    puts "#{their_move}, Win."
  elsif your_move == their_move
    puts "#{their_move}, Tie."
  else
    puts "#{their_move}, Lose."
  end
end

def swingers(array_of_couples)
  #it's debatable that MAYBE I should have broken this into smaller methods.
  men = []
  women = []
  number_of_couples = array_of_couples.length
  new_couples = []

  array_of_couples.each do |el|
    women << el.pop
    men << el.pop
  end
  
  men = men.shuffle
  women = women.shuffle

  number_of_couples.times do 
    couple = []
    couple << men.pop
    couple << women.pop

    new_couples << couple
  end
  new_couples
end

couples = [["Clyde", "Bonnie"], ["Paris", "Helen"],["Romeo", "Juliet"]]