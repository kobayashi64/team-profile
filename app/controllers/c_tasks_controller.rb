class CTasksController < ApplicationController
  before_action :move_to_signed_in, only: [:edit, :new]
  before_action :set_c_task, only: [:show, :edit, :update]

  def index
    @c_task = CTask.includes(:user)
    @c_tasks = CTask.where(user_id: current_user.id) if user_signed_in?
  end

  def show
  end

  def edit
    redirect_to root_path unless @c_task.user_id == current_user.id
  end

  def new
    @c_task = CTask.new
  end

  def update
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
                                   :job_confirmation, :c_certification_id).merge(user_id: current_user.id)
  end

  def move_to_signed_in
    redirect_to user_session_path unless user_signed_in?
  end

  def set_c_task
    @c_task = CTask.find(params[:id])
  end
end
