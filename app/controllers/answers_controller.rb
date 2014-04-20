class AnswersController < ApplicationController
  def index
    @answers = Answer.find_all_by_question_id(params[:question_id])

    respond_to do |format|

      format.html # index.html.erb
      format.json { render json: @answers }

    end
  end
end
