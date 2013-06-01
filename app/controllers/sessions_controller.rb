class SessionsController < ApplicationController
  def new
  end

  def create
    a = Admin.find_by_name(params[:name])

    if a.present? && a.authenticate(params[:password])
      session[:admin_id] = a.id
      redirect_to outfits_url, notice: 'This is the admin view'
    else
      redirect_to new_session_url, notice: "Try again."
    end
  end

  def destroy
    reset_session
    redirect_to outfits_url, notice: 'Signed out'
  end
end
