class UsersController < ApplicationController
  def show
    @user = User.find_by({ "id" => params["id"] })
  end

  def new
    # renders users/new.html.erb
  end

  def create
    @user = User.new
    @user["first_name"] = params["first_name"]
    @user["last_name"] = params["last_name"]
    @user["email"] = params["email"]
    @user["password"] = params["password"]
    if @user.save
      redirect_to "/users/#{@user["id"]}"
    else
      flash.now["notice"] = "Email already exists!"
      render "new"
    end
  end
end
