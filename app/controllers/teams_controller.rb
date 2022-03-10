class TeamsController < ApplicationController
  def index
    @user = User.all
    @c_task = CTask.all
  end

  def show
    @user = User.find(params[:id])
  end
end
