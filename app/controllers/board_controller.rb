class BoardController < ApplicationController
  before_action :set_board, only: [ :view ]
  def index
    @boards = Board.all
  end

  def view
  end

  private
  def set_board
    @board = Board.find_by_id(params[:id])
  end
end
