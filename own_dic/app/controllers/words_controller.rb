class WordsController < ApplicationController
  def index
  end

  def show
    @word = Word.find_by(:alphabet => params[:alphabet])
  end
end
