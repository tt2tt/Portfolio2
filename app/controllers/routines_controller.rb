class RoutinesController < ApplicationController
  before_action :set_id, only:[:show]

  def index
    @routines = Routine.all
  end

  def new
    @routine = Routine.new
  end

  def show
  end

  def create
    @routine = Routine.new(routine_params)
    @routine.save
    redirect_to routines_path
  end

  def routine_params
	  params.require(:routine).permit(:name, :content)
	end

  def set_id
	  @routine = Routine.find(params[:id])
	end
end
