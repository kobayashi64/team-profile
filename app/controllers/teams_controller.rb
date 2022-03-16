class TeamsController < ApplicationController
  def index
    if params[:q]&.dig(:name)
      squished_keywords = params[:q][:name].squish
      params[:q][:name_cont_any] = squished_keywords.split(" ")
    end
    @q = User.ransack(params[:q])
    @teams = @q.result
    
  end

  def show
    @user = User.find(params[:id])
  end

  def search

  end

end
