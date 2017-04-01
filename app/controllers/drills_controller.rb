class DrillsController < ApplicationController

  before_action :find_drill, only: [:show, :destroy]

  def index
    @drills = Drill.all

  end

  def getway
    @drills = Drill.all
  end

  def map
  end

  def new
    @drill = Drill.new
    @day = params[:day_id]
    @group = Group.find params[:group_id]
    @exercises = @group.exercises
  end

  def create
    day = params[:day_id]
    drill = Drill.new drill_params
    if drill.save
      redirect_to new_drill_path(day_id: drill.day_id, group_id: params[:group_id])
    else
      render :new
    end
  end


  def show
  end

  def edit
  end

  def update
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