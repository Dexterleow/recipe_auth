class UsersController < ApplicationController
before_action :is_authenticated, except:[:new, :create]
#method is declared in application_controller

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    puts ">>>checking: #{user_params.inspect}"
    @user = User.new(user_params)

    if @user.save
      redirect_to login_path, notice: "Please login to activate your account!"
    else
      render users_path, notice: "Email / Password has been registered before."
    end#if-else
  end

  def update
  end

  def destroy
  end

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
