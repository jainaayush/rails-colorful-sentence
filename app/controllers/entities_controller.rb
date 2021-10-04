class EntitiesController < ApplicationController

  def create
    @sentence = Sentence.find(params[:sentence_id])
    @entity = @sentence.entities.create(entity_params)
    redirect_to sentence_path(@sentence)
  end

  private
  
  def entity_params
    params.require(:entity).permit(:text, :text_type)
  end
end
