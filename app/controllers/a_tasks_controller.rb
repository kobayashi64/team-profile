class ATasksController < ApplicationController
  before_action :move_to_signed_in, only: [:edit, :new]
  before_action :set_a_task, only: [:show, :edit, :update]

  def index
    @a_task = ATask.includes(:user)
    @a_tasks = ATask.where(user_id: current_user.id) if user_signed_in?
  end

  def show
  end

  def edit
    redirect_to root_path unless @a_task.user_id == current_user.id
  end

  def new
    @a_task = ATask.new
  end

  def update
    if @a_task.update(a_task_params)
      redirect_to a_task_path(@a_task.id)
    else
      render :edit
    end
  end

  def create
    @a_task = ATask.new(a_task_params)
    if @a_task.save
      redirect_to a_task_path(@a_task.id)
    else
      render :new
    end
  end

  private

  def a_task_params
    params.require(:a_task).permit(:operation_handover_material, :incident_handover_material, :failure_flow,
                                   :a_certification_id).merge(user_id: current_user.id)
  end

  def move_to_signed_in
    redirect_to user_session_path unless user_signed_in?
  end

  def set_a_task
    @a_task = ATask.find(params[:id])
  end
end
