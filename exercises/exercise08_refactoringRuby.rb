# Denise Funk
# CS 362 Exercise 8: Intermediate Ruby

def noun
  2.times { puts "Noun: Cadillac" }
end

def verb
  2.times { puts "Verb: Accelerate" }
end

def adjective
  3.times { puts "Adjective: Dark" }
end

def adverb
  2.times { puts "Adverb: Confidently" }
end

def gerund
  4.times { puts "Gerund: Grooving" }
end

commands = {
  "noun" => :noun,
  "verb" => :verb,
  "adjective" => :adjective,
  "adverb" => :adverb,
  "gerund" => :gerund
}

puts "Enter a command: #{commands.keys.join(' ')}"
selection = gets.chomp

send(commands[selection]) if commands[selection]