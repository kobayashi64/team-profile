class CTasksController < ApplicationController
  def index
    @user = User.all
    @c_task = CTask.all
    @c_tasks = CTask.where(user_id: current_user.id).includes(:user).order('created_at DESC')
  end

  def show
    @c_task = CTask.find(params[:id])
  end

  def edit
    @c_task = CTask.find(params[:id])
  end

  def new
    @c_task = CTask.new
  end

  def update
    @c_task = CTask.find(params[:id])
    if @c_task.update(c_task_params)
      redirect_to c_task_path(@c_task.id)
    else
      render :edit
    end
  end

  def create
    @c_task = CTask.new(c_task_params)
    if @c_task.save
      redirect_to c_task_path(@c_task.id)
    else
      render :new
    end
  end

  private

  def c_task_params
    params.require(:c_task).permit(:card_lending, :get_log, :surveillance_monitor, :check_the_log,
                                   :job_confirmation).merge(user_id: current_user.id)
  end
end
