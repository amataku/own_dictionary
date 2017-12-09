class WordsController < ApplicationController
  def index
     @word = Word.all
  end

  def show
    @word = Word.find_by(:alphabet => params[:alphabet])
  end

  def search
    @word = Array.new
    if request.post? then
      search_word = '%' + params[:search] + '%'
      @word = Word.where('name like ? or genre like ? or alphabet like ? or reading like ?',
      search_word,search_word,search_word,search_word).order 'name asc'
    end
  end

  def create
    @word = Word.new
    @word.name = params[:word][:name]
    @word.mean = params[:word][:mean]
    @word.genre = params[:word][:genre]
    @word.alphabet = params[:word][:alphabet]
    @word.reading = params[:word][:reading]
    @word.save
    redirect_to '/words/index'
  end

  def new
  end

end
