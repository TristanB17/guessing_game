require_relative 'test_helper'
require './lib/game'
require './lib/printer'

class GuessingGameTest < Minitest::Test

  def setup
    @game = GuessingGame.new
  end

  def test_it_exists
    assert_instance_of GuessingGame, @game
  end

  def test_guess_number_starts_at_zero
    assert_equal 0, @game.guess_number
  end

  def test_input_starts_at_nil
    assert_nil @game.input
  end

  def test_random_number
    assert @game.random_number.between?(1,100)
  end

end
