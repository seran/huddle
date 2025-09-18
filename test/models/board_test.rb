require "test_helper"

class BoardTest < ActiveSupport::TestCase
  test "validate board name" do
    board = Board.new
    board.name = "One"
    assert_not board.save
  end
end
