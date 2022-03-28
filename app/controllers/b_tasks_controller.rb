class BTasksController < ApplicationController
  before_action :move_to_signed_in, only: [:edit, :new]
  before_action :set_b_task, only: [:show, :edit, :update]

  def index
    @b_task = BTask.includes(:user)
    @b_tasks = BTask.where(user_id: current_user.id).includes(:user) if user_signed_in?
  end

  def show
  end

  def edit
    redirect_to root_path unless @b_task.user_id == current_user.id
  end

  def new
    @b_task = BTask.new
  end

  def update
    if @b_task.update(b_task_params)
      redirect_to b_task_path(@b_task.id)
    else
      render :edit
    end
  end

  def create
    @b_task = BTask.new(b_task_params)
    if @b_task.save
      redirect_to b_task_path(@b_task.id)
    else
      render :new
    end
  end

  private

  def b_task_params
    params.require(:b_task).permit(:job_start, :sending_media, :status_change, :alarm_support,
                                   :failure_contact, :b_certification_id).merge(user_id: current_user.id)
  end

  def move_to_signed_in
    redirect_to user_session_path unless user_signed_in?
  end

  def set_b_task
    @b_task = BTask.find(params[:id])
  end
end
