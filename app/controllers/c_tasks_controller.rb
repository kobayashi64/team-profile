class CTasksController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.all
    @c_task = CTask.find(params[:id])
  end

  def edit
    @user = User.all
  end

  def create
    @c_task = CTask.new(c_task_params)
    if @c_task.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def c_task_params
    params.permit(:card_lending,:get_log,:surveillance_monitor,:check_the_log,:job_confirmation).merge(user_id: current_user.id)
  end

end
