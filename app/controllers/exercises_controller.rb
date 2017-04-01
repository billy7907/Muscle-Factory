class ExercisesController < ApplicationController

  before_action :find_exercise, only: :show

  def index
    @exercises = Exercise.all
  end

  def show
  end


  private

  def find_exercise
    @exercise = Exercise.find params[:id]
  end
end
