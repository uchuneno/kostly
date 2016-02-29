class UsersController < ApplicationController
  before_action :authorize, only: [:edit, :update, :destroy]
  before_action :authorize_profile, only: [:edit, :update]
  # GET /users/3
  def show
  @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  # POST /users
  def create
  @user = User.new(user_params)

    if @user.save
      redirect_to @user, notice: 'User created!'
    else
      render :new
  end
end

  def edit
    @user = User.find(params[:id])
  end


  # PATCH /users/3
  def update
  @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user, notice: 'User updated!'
    else
      render :edit
  end
end

  # DELETE /users/3
  def destroy
  @user = User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  restful_controller

  private

      def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
      end
end
