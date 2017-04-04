class DrillsController < ApplicationController

  before_action :find_drill, only: [:show, :destroy]

  def index
    @drills = Drill.where(user_id: current_user.id)
    render :index, layout: false
  end

  def getway
    @drills = Drill.where(user_id: current_user.id)
    @groups = Group.all
  end

  def map
  end

  def new
    @drill = Drill.new

    @day = params[:day_id]
    @group = Group.find params[:group_id]
    @exercises = @group.exercises
    respond_to do |format|
      format.js {render :new_exercise}
    end
  end

  def create
    day = params[:day_id]
    drill = Drill.new drill_params
    drill.user = current_user
    if drill.save
      redirect_to new_drill_path(day_id: drill.day_id, group_id: params[:group_id])
    else
      render :new
    end
  end

  def share
    @drills = Drill.all

    render :share, layout: false
  end

  def destroy
    respond_to do |format|
      @drill.destroy
      format.js {render}
    end
  end

  private

  def drill_params
    params.require(:drill).permit(:sets, :reps, :day_id, :exercise_id)
  end

  def find_drill
    @drill = Drill.find params[:id]
  end

end
