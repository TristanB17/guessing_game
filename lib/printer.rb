module Printer

  def welcome_txt
    puts "\e[H\e[2J"
    puts "\nHello, and welcome to guessing game, you lame-o!\n"\
    "Would you like to (P)lay, read the (I)nstructions, or (Q)uit?"
  end

  def instruction_txt
    puts "\e[H\e[2J"
    puts "\nThe rules are simple:\nI will generate a random number,"
    puts "and you can guess until it's correct! I'll tell you"
    puts "if it's higher or lower. You can also (C)heat or I can"
    puts "give you a (H)int!"
  end

  def start_text
    puts "\e[H\e[2J"
    puts "Okie dokie, I've chosen a number. Go ahead and guess!"
  end

  def cheat_txt
    puts "\e[H\e[2J"
    puts "You cheater! The answer is #{@random_number}!"
    puts "Press (p) to play again, or (q) to quit game."
  end

  def guess_higher_text
    puts "\e[H\e[2J"
    puts "Nope, guess higher."
  end

  def guess_lower_text
    puts "\e[H\e[2J"
    puts "Nope, guess lower."
  end

  def hint_helper_confirm_txt
    puts "\e[H\e[2J"
    puts "A hint, eh? Well, what if I told you that the number is a multiple of #{@hint}."
  end

  def hint_helper_deny_txt
    puts "\e[H\e[2J"
    puts "A hint, eh? Well, what if I told you that the number is not a multiple of #{@hint}."
  end

  def victory_text
    puts "\e[H\e[2J"
    puts "\nYou done did it. You gone and done it. You guessed right!\n"\
    "The answer is #{@random_number}, and it only took you #{@guess_number} guess#{'es' if @guess_number > 1}."
    puts "Press (q) to quit or (p) to play again."
  end

end
