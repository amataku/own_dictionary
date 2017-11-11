class WordsController < ApplicationController
  def index
    @word = Word.all
  end

  def show
    @word = Word.find_by(:alphabet => params[:alphabet])
  end

  def new
  end

  def create
    @word = Word.new
    @word.name = params[:word][:name]
    @word.alphabet = params[:word][:alphabet]
    @word.reading = params[:word][:reading]
    @word.genre = params[:word][:genre]
    @word.mean = params[:word][:mean]
    @word.save
    redirect_to '/words/index'
  end
end
