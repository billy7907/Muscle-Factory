class UsersController < ApplicationController

  before_action :load_user, except: [:new, :create]

  def new
    @user = User.new
    render :new, layout: false
  end

  def create
    user_params = params.require(:user).permit(:first_name,
                                               :last_name,
                                               :email,
                                               :password,
                                               :password_confirmation,
                                               :address,
                                               )
    @user = User.new user_params
    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        format.js {render :success}
      else
        format.js { render :failure }
      end
    end
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path, notice: 'User updated!'
    else
      render :edit
    end
  end

  def edit_password
    if @user && @user.authenticate(params[:user][:current_password])
      if params[:user][:current_password] != params[:user][:new_password]
        if params[:user][:new_password] == params[:user][:new_password_confirmation]
          @user.password = params[:user][:new_password]
          @user.save
          redirect_to root_path, notice: "Password Updated!"
        else
          flash[:alert] = "new password must match the new password confirmation"
          render :edit
        end
      else
        flash[:alert] = "New password must be different from the current password"
      end
    else
      flash[:alert] = "Wrong password"
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def load_user
    user = User.find_by_id params[:id]
    if current_user.id == user.id
      @user = user
    end
    @user
  end

end
