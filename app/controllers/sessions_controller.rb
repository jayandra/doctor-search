class SessionsController < Devise::SessionsController

  # POST /sessions/login
  def create
    user = User.find_by_email(params[:user][:email].downcase)

    if user && user.valid_password?(params[:user][:password])
      set_flash_message(:notice, :signed_in) if is_navigational_format?
      sign_in(:user, user)
      respond_with user, :location => after_sign_in_path_for(user)
    else
      flash[:login_error] = "Invalid email or password"
      redirect_to new_user_session_path
    end
  end

end