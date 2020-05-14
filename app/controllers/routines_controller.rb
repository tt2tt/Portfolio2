class RoutinesController < ApplicationController
  def new
    @routine = Routine.new
  end

  def create
    @routine = Routine.new(routine_params)
    @routine.save
  end

  def routine_params
	  params.require(:routine).permit(:name, :content)
	end
end
