class SessionsController < ApplicationController
  def new
  end

  def create
    email = params[:email]
    password = params[:password]

    user = User.find_by email: email
    if user.try(:authenticate, password)
      session[:user_id] = user.id
      @current_user = user
    end

    # handle both HTML requests and js requests
    respond_to do |format|
      format.html do
        if @current_user
          redirect_to root_path
        else
          render :new
        end
      end
      format.js { }
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
