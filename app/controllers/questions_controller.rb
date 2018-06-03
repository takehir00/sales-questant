class QuestionsController < ApplicationController
  def index
  end

  def new
    @question = Question.new
  end

  def show
  end

  def create
    Question.create(question_params)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def question_params
      params.require(:question).permit(:body).merge(user_id: current_user.id)
    end
end
