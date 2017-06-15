class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
    @events = @user.events.paginate(page: params[:page])
  end
end
