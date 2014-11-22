class SurveysController < ApplicationController

  def new
    @survey = Survey.new
  end




	private
    # Use callbacks to share common setup or constraints between actions.
    def survey
      @survey = Survey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_params
      params.require(:survey).permit(:questions)
    end

end