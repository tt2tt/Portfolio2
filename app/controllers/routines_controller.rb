class RoutinesController < ApplicationController
  before_action :set_id, only:[:show, :edit, :update, :destroy]

  def index
    @routines = current_user.routines
  end

  def new
    @routine = Routine.new
  end

  def show
  end

  def edit
  end

  def create
    @routine = current_user.routines.build(routine_params)
    @routine.save
    redirect_to routines_path
  end

  def update
	 @routine.update(routine_params)
    redirect_to routines_path
  end

  def destroy
    @routine.destroy
    redirect_to routines_path
  end

  def routine_params
	  params.require(:routine).permit(:name, :content)
	end

  def set_id
	  @routine = Routine.find(params[:id])
	end
end
