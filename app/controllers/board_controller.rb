class BoardController < ApplicationController
  before_action :authenticate_user!
  before_action :set_board, only: [ :kanban ]
  def index
    @boards = Board.all
  end

  def kanban
  end

  private
  def set_board
    @board = Board.find_by_id(params[:id])
  end
end
