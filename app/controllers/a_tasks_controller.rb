class ATasksController < ApplicationController
  def index
    @user = User.all
  end
end
