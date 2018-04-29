require_relative 'printer.rb'

class GuessingGame
  include Printer

  attr_reader       :guess_number,
                    :random_number,
                    :input

  def initialize
    @hint = rand(2..10)
    @guess_number = 0
    @input = nil
    @random_number = rand(1..100)
  end

  def calculate_hint
    if @hint % @random_number == 0
      hint_helper_confirm_txt
    elsif @hint % @random_number != 0
      hint_helper_deny_txt
    end
  end

  def start
    welcome_txt
    until @input == 'q'.downcase
    @input = gets.chomp
    @guess_number += 1
      case
      when @input == 'i'.downcase
        then instruction_txt
      when @input == 'h'.downcase
        then calculate_hint
      when @input == 'c'.downcase
        then cheat_txt
      when @input == 'p'.downcase
        then @random_number = rand(1..100)
        welcome_txt
      when @input == 'q'.downcase
        then break
      when @input.to_i > @random_number
        then guess_lower_text
      when @input.to_i < @random_number
        then guess_higher_text
      when @input.to_i == @random_number
        then victory_text
      end
    end
  end
end
