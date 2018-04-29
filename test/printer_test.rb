require_relative 'test_helper'
require './lib/printer'

class PrinterTest < Minitest::Test

  def setup
    @printer = Printer.new
  end

  def test_it_exists
    assert_instance_of Printer, printer
  end

end
