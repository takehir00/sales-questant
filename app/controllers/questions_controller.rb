class QuestionsController < ApplicationController
  def index
    @questions = Question.order("created_at DESC").limit(15)
  end

  def new
    @question = Question.new
  end

  def show
  end

  def create
    Question.create(question_params)
    redirect_to root_path
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
