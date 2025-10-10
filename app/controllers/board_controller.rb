class BoardController < ApplicationController
  def index
    @board = Board.find_by_id(params[:id])
  end
end
