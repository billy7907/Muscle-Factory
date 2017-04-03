class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by_email params[:email]
    respond_to do |format|
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        # redirect_to root_path, notice: "Logged In"
        format.js { render :success}
      else
        # flash[:alert] = "Wrong email or password"
        # format.html {render :new}
        format.js {render :failure}
      end
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Signed out!'
  end
end
