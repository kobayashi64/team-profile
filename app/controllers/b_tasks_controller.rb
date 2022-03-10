class BTasksController < ApplicationController
  def index
    @user = User.all
  end
end
