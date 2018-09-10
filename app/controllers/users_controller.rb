class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      if @user.valid?
        @user.save
        @user.quarters = quarter_id[:quarters].select{|id| id != ""}.map{|id| Quarter.find(id)}
        redirect_to @user
      else
        render :new
      end

  end

  def destroy
    @user = User.find(params[:id]).destroy
    redirect_to users_path
  end




private

def user_params
  params.require(:user).permit(:name, :age, :location)
end

def quarter_id
  params.require(:user).permit(quarters: [])
end






end
