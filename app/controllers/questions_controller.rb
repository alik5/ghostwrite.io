class QuestionsController < ApplicationController

 

  def new
    @question = Question.new
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:question, :question_id)
end
