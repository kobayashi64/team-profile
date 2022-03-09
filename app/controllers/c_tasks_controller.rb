class CTasksController < ApplicationController
  def index
    @user = User.all
  end
end
