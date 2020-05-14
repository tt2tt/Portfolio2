class RoutinesController < ApplicationController
  def index
    @routines = Routine.all
  end

  def new
    @routine = Routine.new
  end

  def create
    @routine = Routine.new(routine_params)
    @routine.save
    redirect_to routines_path
  end

  def routine_params
	  params.require(:routine).permit(:name, :content)
	end
end
