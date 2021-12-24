module SessionHelper
  def perform_login_action(email, password)
    user = User.find_by(email: email)

    if user&.authenticate(password.downcase)
      session[:user_id] = user.id
      redirect_to user_path(user), notice: 'Logged in successfully.'
    else
      render :new
    end
  end
end