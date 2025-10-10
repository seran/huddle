class BoardController < ApplicationController
  def index
    @board = Board.find_by_id(params[:id])

    @tasks = Task.where(board_id: @board.id)
  end
end
