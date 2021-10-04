class SentencesController < ApplicationController
  
  def index
    @sentences = Sentence.all
  end

  def show
    @sentence = Sentence.find(params[:id])
  end

  def new
    @sentence = Sentence.new
  end

  def create
    sentence = Sentence.create(sentence_params)

    redirect_to sentence_path(sentence)
  end

  private

  def sentence_params
    params.require(:sentence).permit(:description)
  end
end
